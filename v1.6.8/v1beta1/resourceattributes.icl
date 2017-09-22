/**ResourceAttributes includes the authorization attributes available for resource requests
 to the Authorizer interface*/
::orch "kubernetes" "ResourceAttributes" as ResourceAttributes @verb, @resource, @name, @version, @group, @namespace, @subresource {
     /**Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete,
      proxy.  "*" means all.*/
     verb = null,
     /**Resource is one of the existing resource types.  "*" means all.*/
     resource = null,
     /**Name is the name of the resource being requested for a "get" or deleted for a "delete".
      "" (empty) means all.*/
     name = null,
     /**Version is the API Version of the Resource.  "*" means all.*/
     version = null,
     /**Group is the API Group of the Resource.  "*" means all.*/
     group = null,
     /**Namespace is the namespace of the action being requested.  Currently, there is no distinction
      between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews
      "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped
      resources from a SubjectAccessReview or SelfSubjectAccessReview*/
     namespace = null,
     /**Subresource is one of the existing resource types.  "" means none.*/
     subresource = null
}