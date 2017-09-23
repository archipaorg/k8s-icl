import * as fs from 'fs';
import * as Path from 'path';
import {_Definitions, Definitions, IclTemplateGeneration, JsonSchema, JsonSchemaProperty} from '../common/types';
import {Utils} from '../common/utils';
import * as Util from 'util';

const indent_string = require('indent-string');
const escapeStringRegexp = require('escape-string-regexp');

export class Build {
    /**
     * Default regex that shoud match a definition name entry e.g. io.k8s.kubernetes.pkg.api.v1.ConfigMap
     * This regex is used to extract the api version and name of each definition
     * @type {string}
     */
    private static readonly DEFINITION_NAME_PATTERN: string = '^.*.(v[0-9]([0-9]|[a-z|A-Z|_])*).([a-z|A-Z|_]+)|^((v[0-9]([0-9]|[a-z|A-Z|_])*).([a-z|A-Z|_]+))';

    /**
     * default definition file name
     * @type {string}
     */
    private static readonly DEFINITION_FILE_NAME = '_definitions.json';

    /**
     * default icl file name ext
     * @type {string}
     */
    private static readonly ICL_FILENAME_EXT = '.icl';

    /**
     * icl namespace
     * @type {string}
     */
    private static readonly ICL_NAMESPACE = 'orch "kubernetes"';


    private static readonly ICL_TEMPLATE_NULL_PROPERTY = '/**%s*/' + // description comment
        '\r\n%s = ' +// property name = ""
        '%s';//property val
    /**
     *
     * @type {string}
     */
    private static readonly ICL_TEMPLATE_STRING_PROPERTY = '/**%s*/' + // description comment
        '\r\n%s = ' +// property name = ""
        '"%s"';//property val

    /**
     *
     * @type {string}
     */
    private static readonly ICL_TEMPLATE_INTEGER_PROPERTY = '/**%s*/' + // description comment
        '\r\n%s = ' +//property name
        '%s'; // property val

    /**
     *
     * @type {string}
     */
    private static readonly ICL_TEMPLATE_CUSTOM_PROPERTY = '/**%s*/' +  // description comment
        '\r\n%s ' + // property custom type
        '"%s" ' + // property name
        '{}';

    private static readonly ICL_TEMPLATE_WRAPPER = '%s' + // take statements
        '/**%s*/\r\n' + // description
        '::%s ' + // namespace
        '"%s" as %s ' + // kubernetes component name
        '%s ' +//mixins arguments
        '{\r\n' +
        '%s' + //all properties
        '\r\n' +
        '}';

    /**
     * This is where the json schemas are present
     */
    private jsonSchemasFolder: string;
    /**
     * This is where we are going to generate our icl templates
     */
    private iclTemplatesFolder: string;

    private jsonSchemas: _Definitions;

    /**
     * Create a new instance of {@see Build}
     * @param {string} jsonSchemasFolder the folder where all the schemas are present
     * @param {string} iclTemplatesFolder the folder where the generates icls are going to be put
     */
    constructor(jsonSchemasFolder: string, iclTemplatesFolder: string) {
        this.jsonSchemasFolder = jsonSchemasFolder;
        this.iclTemplatesFolder = iclTemplatesFolder;
    }

    /**
     *
     */
    public generate() {
        // erase all the schemaFiles present in _templates
        Utils.emptyDir(this.iclTemplatesFolder, false);
        // open the jsonSchemas file
        this.loadDefinitions();
        // generate an icl template for every definition
        for (let jsonSchemaName in this.jsonSchemas) {
            this.generateIclTemplate(jsonSchemaName);
        }
    }

    private getApiDirForVersion(version: string): string {
        return Path.join(this.iclTemplatesFolder, version);
    }

    private getFileNameFor(definition: string, version: string): string {
        return Path.join(this.getApiDirForVersion(version), definition + Build.ICL_FILENAME_EXT);
    }

    /**
     * Generate an icl template
     * @param {string} jsonSchemaName
     * @param {Array<string>} traversedDefinitions
     * @returns {IclTemplateGeneration}
     */
    public generateIclTemplate(jsonSchemaName: string, traversedDefinitions: Array<string> = []): IclTemplateGeneration | null {

        let jsonSchema: JsonSchema = this.jsonSchemas[jsonSchemaName];
        let match: Array<any> | null = new RegExp(Build.DEFINITION_NAME_PATTERN, 'gi').exec(jsonSchemaName);

        if (match !== null) {
            // version api version
            let kApiVersion: string = match[1];
            // component name
            let kComponentName: string = match[3];

            if (!kComponentName) { // it means it matched with the old pattern
                kApiVersion = match[5];
                kComponentName = match[7];
            }

            // if the template doesnt exists
            if (!fs.existsSync(this.getFileNameFor(kComponentName.toLowerCase(), kApiVersion)) && traversedDefinitions.indexOf(jsonSchemaName) == -1) {
                /** the folder where we are going to store our generated icl template
                 & make sure that the api folder is created*/
                Utils.createDir(this.getApiDirForVersion(kApiVersion));
                // will contain all the imports statements declaration
                let imports: Array<string> = [];
                // will contain all the primitive properties (string, number, boolean) declarations
                let iclPrimitiveProperties: Array<string> = [];
                // will contain all the complex properties declarations
                let iclComplexProperties: Array<string> = [];
                // arguments list
                let argsList: Array<string> = [];

                let xKubernetesGroupVersionKind = "x-kubernetes-group-version-kind" in
                    this.jsonSchemas[jsonSchemaName]
                    ? this.jsonSchemas[jsonSchemaName]["x-kubernetes-group-version-kind"][0] : null
                ;

                if(jsonSchema.properties) {
                    // iterate json schema properties
                    for (let propertyName in jsonSchema.properties) {

                        let property: JsonSchemaProperty = jsonSchema.properties[propertyName];
                        let propertyVal: any = null;
                        argsList.push(propertyName);
                        // check if there is a default value for the current property
                        if (xKubernetesGroupVersionKind) {
                            let defaultPropertyKey = propertyName == 'apiVersion' ? 'version' : propertyName;
                            if (defaultPropertyKey in (<any>xKubernetesGroupVersionKind)) {
                                propertyVal = (<any>xKubernetesGroupVersionKind)[defaultPropertyKey];
                            }
                        }

                        if (property.type) { // inline type
                            if (propertyVal == null) {
                                iclPrimitiveProperties.push(indent_string(Util.format(Build.ICL_TEMPLATE_NULL_PROPERTY,
                                    Utils.breakIfLineIsLongerThan(property.description),
                                    propertyName,
                                    'null'
                                ), 5, ' '));
                            } else {
                                switch (property.type) {
                                    case 'string':
                                        iclPrimitiveProperties.push(indent_string(Util.format(Build.ICL_TEMPLATE_STRING_PROPERTY,
                                            Utils.breakIfLineIsLongerThan(property.description),
                                            propertyName,
                                            propertyVal
                                        ), 5, ' '));
                                        break;

                                    case 'integer':
                                        iclPrimitiveProperties.push(indent_string(Util.format(Build.ICL_TEMPLATE_INTEGER_PROPERTY,
                                            Utils.breakIfLineIsLongerThan(property.description),
                                            propertyName,
                                            propertyVal
                                        ), 5, ' '));
                                        break;
                                }
                            }
                        } else if (property.$ref) { // ref type

                            let refWithoutPrefix: string = property.$ref.replace('#/definitions/', '');
                            // go on recursively to create the sub icl template
                            let subIclTemplate: IclTemplateGeneration | null = this.generateIclTemplate(refWithoutPrefix, traversedDefinitions.concat(jsonSchemaName));

                            if (subIclTemplate) { // ok the sub icl template has been successfully generated
                                /*if it's the same api version it means they are in the same folder*/
                                if (subIclTemplate.version == kApiVersion) {
                                    imports.push(subIclTemplate.name.toLowerCase());
                                } else { // not the same api version it means that we must go upper
                                    imports.push('../' + subIclTemplate.version + '/' + subIclTemplate.name.toLowerCase());
                                }
                                iclComplexProperties.push(indent_string(
                                    Util.format(Build.ICL_TEMPLATE_CUSTOM_PROPERTY,
                                        Utils.breakIfLineIsLongerThan(property.description),
                                        subIclTemplate.name, propertyName
                                    ), 5, ' '));
                            }
                            else {
                                // throw new Error('error');
                                console.log(refWithoutPrefix + '>>ignored');
                            }
                        }
                    }

                    let takeStatement: string = '';
                    // generate take statements if any
                    if (imports.length > 0) {
                        takeStatement = 'take ' + imports.join(',\r\n     ') + '\r\n\r\n';
                    }
                    let allProperties = [];
                    if (iclPrimitiveProperties.length > 0) {
                        allProperties.push(iclPrimitiveProperties.join(',\r\n'));
                    }
                    if (iclComplexProperties.length > 0) {
                        allProperties.push(iclComplexProperties.join('\r\n'));
                    }

                    let iclTemplateWrapper = Util.format(Build.ICL_TEMPLATE_WRAPPER,
                        takeStatement,
                        Utils.breakIfLineIsLongerThan(jsonSchema.description),
                        Build.ICL_NAMESPACE,
                        kComponentName,
                        kComponentName,
                        argsList.map((property) => {
                            return '@' + property.toString();
                        }).join(', '),
                        allProperties.join(',\r\n')
                    );

                    fs.writeFileSync(this.getFileNameFor(kComponentName.toLowerCase(), kApiVersion), iclTemplateWrapper);
                }

                return <IclTemplateGeneration> {
                    name: kComponentName,
                    version: kApiVersion
                };
            } else {
                return <IclTemplateGeneration> {
                    name: kComponentName,
                    version: kApiVersion
                };
            }
        }

        return null;

    }

    private loadDefinitions() {
        this.jsonSchemas = (<Definitions>Utils.openJSONSchemaIn(this.jsonSchemasFolder))
            .definitions;
    }

}
