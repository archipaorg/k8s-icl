take jsonschemaprops

/**JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array
 of JSONSchemaProps. Mainly here for serialization purposes.*/
::orch "kubernetes" "JSONSchemaPropsOrArray" as JSONSchemaPropsOrArray @JSONSchemas, @Schema {
     /***/
     JSONSchemas = null,
     /***/
     JSONSchemaProps "Schema" {}
}