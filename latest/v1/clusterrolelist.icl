take listmeta

/**ClusterRoleList is a collection of ClusterRoles*/
::orch "kubernetes" "ClusterRoleList" as ClusterRoleList @items, @kind, @apiVersion, @metadata {
     /**Items is a list of ClusterRoles*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ClusterRoleList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Standard object's metadata.*/
     ListMeta "metadata" {}
}