take podspec

/**PodTemplateSpec describes the data a pod should have when created from a template*/
::orch "kubernetes" "PodTemplateSpec" as PodTemplateSpec @spec, @metadata {
     /**Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     PodSpec "spec" {}
}