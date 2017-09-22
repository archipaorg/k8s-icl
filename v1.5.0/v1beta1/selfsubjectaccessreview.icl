take subjectaccessreviewstatus,
     selfsubjectaccessreviewspec,
     ../v1/objectmeta

/**SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling
 in a spec.namespace means "in all namespaces".  Self is a special case, because users should
 always be able to check whether they can perform an action*/
::orch "kubernetes" "SelfSubjectAccessReview" as SelfSubjectAccessReview @status, @spec, @metadata {
     /**Status is filled in by the server and indicates whether the request is allowed or not*/
     SubjectAccessReviewStatus "status" {}
     /**Spec holds information about the request being evaluated.  user and groups must be empty*/
     SelfSubjectAccessReviewSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}