take ../v1/listmeta

/**DaemonSetList is a collection of daemon sets.*/
::orch "kubernetes" "DaemonSetList" as DaemonSetList @items, @kind, @apiVersion, @metadata {
     /**A list of daemon sets.*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "DaemonSetList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ListMeta "metadata" {}
}