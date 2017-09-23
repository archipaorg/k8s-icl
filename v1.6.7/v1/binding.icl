take objectreference,
     objectmeta

/**Binding ties one object to another. For example, a pod is bound to a node by a scheduler.*/
::orch "kubernetes" "Binding" as Binding @kind, @target, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**The target object that you want to bind to the standard object.*/
     ObjectReference "target" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}