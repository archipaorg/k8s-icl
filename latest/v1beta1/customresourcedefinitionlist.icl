take ../v1/listmeta

/**CustomResourceDefinitionList is a list of CustomResourceDefinition objects.*/
::orch "kubernetes" "CustomResourceDefinitionList" as CustomResourceDefinitionList @items, @kind, @apiVersion, @metadata {
     /**Items individual CustomResourceDefinitions*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = null,
     /***/
     ListMeta "metadata" {}
}