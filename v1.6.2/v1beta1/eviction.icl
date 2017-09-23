take ../v1/deleteoptions,
     ../v1/objectmeta

/**Eviction evicts a pod from its node subject to certain policies and safety constraints.
 This is a subresource of Pod.  A request to cause such an eviction is created by POSTing
 to .../pods/<pod name>/evictions.*/
::orch "kubernetes" "Eviction" as Eviction @deleteOptions, @kind, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**DeleteOptions may be provided*/
     DeleteOptions "deleteOptions" {}
     /**ObjectMeta describes the pod that is being evicted.*/
     ObjectMeta "metadata" {}
}