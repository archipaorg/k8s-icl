take scalestatus,
     scalespec,
     objectmeta

/**Scale represents a scaling request for a resource.*/
::orch "kubernetes" "Scale" as Scale @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "Scale",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**current status of the scale. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.
      Read-only.*/
     ScaleStatus "status" {}
     /**defines the behavior of the scale. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.*/
     ScaleSpec "spec" {}
     /**Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.*/
     ObjectMeta "metadata" {}
}