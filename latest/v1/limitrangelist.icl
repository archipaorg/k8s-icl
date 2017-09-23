take listmeta

/**LimitRangeList is a list of LimitRange items.*/
::orch "kubernetes" "LimitRangeList" as LimitRangeList @items, @kind, @apiVersion, @metadata {
     /**Items is a list of LimitRange objects. More info: https://git.k8s.io/community/contributors/design-proposals/admission_control_limit_range.md*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "LimitRangeList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     ListMeta "metadata" {}
}