take jsonschemaprops

/**JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for
 the boolean property.*/
::orch "kubernetes" "JSONSchemaPropsOrBool" as JSONSchemaPropsOrBool @Allows, @Schema {
     /***/
     Allows = null,
     /***/
     JSONSchemaProps "Schema" {}
}