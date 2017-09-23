take podspec,
     objectmeta

/**PodTemplateSpec describes the data a pod should have when created from a template*/
::orch "kubernetes" "PodTemplateSpec" as PodTemplateSpec @spec, @metadata {
     /**Specification of the desired behavior of the pod. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     PodSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}