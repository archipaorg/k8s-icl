take objectreference

/**Binding ties one object to another; for example, a pod is bound to a node by a scheduler.
 Deprecated in 1.7, please use the bindings subresource of pods instead.*/
::orch "kubernetes" "Binding" as Binding @kind, @target, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "Binding",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**The target object that you want to bind to the standard object.*/
     ObjectReference "target" {}
}