/**APIResource specifies the name of a resource and whether it is namespaced.*/
::orch "kubernetes" "APIResource" as APIResource @shortNames, @namespaced, @kind, @verbs, @name {
     /**shortNames is a list of suggested short names of the resource.*/
     shortNames = null,
     /**namespaced indicates if a resource is namespaced or not.*/
     namespaced = null,
     /**kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')*/
     kind = null,
     /**verbs is a list of supported kube verbs (this includes get, list, watch, create, update,
      patch, delete, deletecollection, and proxy)*/
     verbs = null,
     /**name is the name of the resource.*/
     name = null
}