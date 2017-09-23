take ../v1/listmeta

/**ThirdPartyResourceList is a list of ThirdPartyResources.*/
::orch "kubernetes" "ThirdPartyResourceList" as ThirdPartyResourceList @items, @kind, @apiVersion, @metadata {
     /**Items is the list of ThirdPartyResources.*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ThirdPartyResourceList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Standard list metadata.*/
     ListMeta "metadata" {}
}