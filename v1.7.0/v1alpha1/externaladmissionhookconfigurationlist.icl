take ../v1/listmeta

/**ExternalAdmissionHookConfigurationList is a list of ExternalAdmissionHookConfiguration.*/
::orch "kubernetes" "ExternalAdmissionHookConfigurationList" as ExternalAdmissionHookConfigurationList @items, @kind, @apiVersion, @metadata {
     /**List of ExternalAdmissionHookConfiguration.*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ExternalAdmissionHookConfigurationList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1alpha1",
     /**Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     ListMeta "metadata" {}
}