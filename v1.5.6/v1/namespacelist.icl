/**NamespaceList is a list of Namespaces.*/
::orch "kubernetes" "NamespaceList" as NamespaceList @items, @kind, @apiVersion, @metadata {
     /**Items is the list of Namespace objects in the list. More info: http://kubernetes.io/docs/user-guide/namespaces*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null
}