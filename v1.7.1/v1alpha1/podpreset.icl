take podpresetspec,
     ../v1/objectmeta

/**PodPreset is a policy resource that defines additional runtime requirements for a Pod.*/
::orch "kubernetes" "PodPreset" as PodPreset @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "PodPreset",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1alpha1",
     /***/
     PodPresetSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}