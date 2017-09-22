take ../v1/deleteoptions,
     ../v1/objectmeta

/**Eviction evicts a pod from its node subject to certain policies and safety constraints.
 This is a subresource of Pod.  A request to cause such an eviction is created by POSTing
 to .../pods/<pod name>/evictions.*/
::orch "kubernetes" "Eviction" as Eviction @deleteOptions, @metadata {
     /**DeleteOptions may be provided*/
     DeleteOptions "deleteOptions" {}
     /**ObjectMeta describes the pod that is being evicted.*/
     ObjectMeta "metadata" {}
}