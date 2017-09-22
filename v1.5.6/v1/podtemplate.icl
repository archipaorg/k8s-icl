take podtemplatespec,
     objectmeta

/**PodTemplate describes a template for creating copies of a predefined pod.*/
::orch "kubernetes" "PodTemplate" as PodTemplate @kind, @apiVersion, @template, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Template defines the pods that will be created from this pod template. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     PodTemplateSpec "template" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}