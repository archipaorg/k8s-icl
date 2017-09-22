take scalestatus,
     scalespec,
     objectmeta

/**Scale represents a scaling request for a resource.*/
::orch "kubernetes" "Scale" as Scale @status, @spec, @metadata {
     /**current status of the scale. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.
      Read-only.*/
     ScaleStatus "status" {}
     /**defines the behavior of the scale. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.*/
     ScaleSpec "spec" {}
     /**Standard object metadata; More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.*/
     ObjectMeta "metadata" {}
}