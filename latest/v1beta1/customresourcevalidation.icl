take jsonschemaprops

/**CustomResourceValidation is a list of validation methods for CustomResources.*/
::orch "kubernetes" "CustomResourceValidation" as CustomResourceValidation @openAPIV3Schema {
     /**OpenAPIV3Schema is the OpenAPI v3 schema to be validated against.*/
     JSONSchemaProps "openAPIV3Schema" {}
}