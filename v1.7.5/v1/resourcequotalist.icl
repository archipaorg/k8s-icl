take listmeta

/**ResourceQuotaList is a list of ResourceQuota items.*/
::orch "kubernetes" "ResourceQuotaList" as ResourceQuotaList @items, @kind, @apiVersion, @metadata {
     /**Items is a list of ResourceQuota objects. More info: https://git.k8s.io/community/contributors/design-proposals/admission_control_resource_quota.md*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ResourceQuotaList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     ListMeta "metadata" {}
}