export interface JsonSchema {
    "x-kubernetes-group-version-kind": Array<KuberneteGroupKind>,
    type: string,
    required?: Array<string>,
    description?: string,
    properties: JsonSchemaProperties,
    $schema?: string
}

export interface KuberneteGroupKind {
    kind: string,
    version: string,
    group: string
}

export interface JsonSchemaProperties {
    [key: string]: JsonSchemaProperty
}

export interface JsonSchemaProperty {
    type?: string,
    $ref?: string,
    description: string
}

export interface Definitions {
    definitions: _Definitions
}

export interface _Definitions {
    [key: string]: JsonSchema
}

export interface IclTemplateGeneration {
    // imports
    imports: Array<string>,
    version: string,
    // template name
    name: string
}