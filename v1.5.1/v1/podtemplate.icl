take podtemplatespec,
     objectmeta

/**PodTemplate describes a template for creating copies of a predefined pod.*/
::orch "kubernetes" "PodTemplate" as PodTemplate @template, @metadata {
     /**Template defines the pods that will be created from this pod template. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     PodTemplateSpec "template" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}