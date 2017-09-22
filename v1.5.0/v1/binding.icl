take objectreference,
     objectmeta

/**Binding ties one object to another. For example, a pod is bound to a node by a scheduler.*/
::orch "kubernetes" "Binding" as Binding @target, @metadata {
     /**The target object that you want to bind to the standard object.*/
     ObjectReference "target" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}