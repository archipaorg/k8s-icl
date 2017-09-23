take jsonschemaprops,
     jsonschemapropsorbool,
     externaldocumentation,
     json,
     jsonschemapropsorarray,
     jsonschemapropsorbool,
     json

/**JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).*/
::orch "kubernetes" "JSONSchemaProps" as JSONSchemaProps @maxItems, @not, @minimum, @minProperties, @$schema, @exclusiveMinimum, @id, @$ref, @exclusiveMaximum, @title, @anyOf, @allOf, @patternProperties, @multipleOf, @maxProperties, @type, @description, @format, @minLength, @enum, @additionalItems, @dependencies, @maxLength, @uniqueItems, @externalDocs, @properties, @oneOf, @default, @items, @required, @maximum, @minItems, @pattern, @additionalProperties, @definitions, @example {
     /***/
     maxItems = null,
     /***/
     minimum = null,
     /***/
     minProperties = null,
     /***/
     $schema = null,
     /***/
     exclusiveMinimum = null,
     /***/
     id = null,
     /***/
     $ref = null,
     /***/
     exclusiveMaximum = null,
     /***/
     title = null,
     /***/
     anyOf = null,
     /***/
     allOf = null,
     /***/
     patternProperties = null,
     /***/
     multipleOf = null,
     /***/
     maxProperties = null,
     /***/
     type = null,
     /***/
     description = null,
     /***/
     format = null,
     /***/
     minLength = null,
     /***/
     enum = null,
     /***/
     dependencies = null,
     /***/
     maxLength = null,
     /***/
     uniqueItems = null,
     /***/
     properties = null,
     /***/
     oneOf = null,
     /***/
     required = null,
     /***/
     maximum = null,
     /***/
     minItems = null,
     /***/
     pattern = null,
     /***/
     definitions = null,
     /***/
     JSONSchemaProps "not" {}
     /***/
     JSONSchemaPropsOrBool "additionalItems" {}
     /***/
     ExternalDocumentation "externalDocs" {}
     /***/
     JSON "default" {}
     /***/
     JSONSchemaPropsOrArray "items" {}
     /***/
     JSONSchemaPropsOrBool "additionalProperties" {}
     /***/
     JSON "example" {}
}