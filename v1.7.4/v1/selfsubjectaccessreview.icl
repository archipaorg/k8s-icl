take subjectaccessreviewstatus,
     selfsubjectaccessreviewspec,
     objectmeta

/**SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling
 in a spec.namespace means "in all namespaces".  Self is a special case, because users should
 always be able to check whether they can perform an action*/
::orch "kubernetes" "SelfSubjectAccessReview" as SelfSubjectAccessReview @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "SelfSubjectAccessReview",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Status is filled in by the server and indicates whether the request is allowed or not*/
     SubjectAccessReviewStatus "status" {}
     /**Spec holds information about the request being evaluated.  user and groups must be empty*/
     SelfSubjectAccessReviewSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}