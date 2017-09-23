take listmeta

/**NamespaceList is a list of Namespaces.*/
::orch "kubernetes" "NamespaceList" as NamespaceList @items, @kind, @apiVersion, @metadata {
     /**Items is the list of Namespace objects in the list. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "NamespaceList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     ListMeta "metadata" {}
}