take listmeta

/**ServiceAccountList is a list of ServiceAccount objects*/
::orch "kubernetes" "ServiceAccountList" as ServiceAccountList @items, @kind, @apiVersion, @metadata {
     /**List of ServiceAccounts. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ServiceAccountList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     ListMeta "metadata" {}
}