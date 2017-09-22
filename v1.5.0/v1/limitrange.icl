take limitrangespec,
     objectmeta

/**LimitRange sets resource usage limits for each kind of resource in a Namespace.*/
::orch "kubernetes" "LimitRange" as LimitRange @spec, @metadata {
     /**Spec defines the limits enforced. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     LimitRangeSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}