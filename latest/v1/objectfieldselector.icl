/**ObjectFieldSelector selects an APIVersioned field of an object.*/
::orch "kubernetes" "ObjectFieldSelector" as ObjectFieldSelector @fieldPath, @apiVersion {
     /**Path of the field to select in the specified API version.*/
     fieldPath = null,
     /**Version of the schema the FieldPath is written in terms of, defaults to "v1".*/
     apiVersion = null
}