take subjectaccessreviewstatus,
     subjectaccessreviewspec,
     ../v1/objectmeta

/**SubjectAccessReview checks whether or not a user or group can perform an action.*/
::orch "kubernetes" "SubjectAccessReview" as SubjectAccessReview @status, @spec, @metadata {
     /**Status is filled in by the server and indicates whether the request is allowed or not*/
     SubjectAccessReviewStatus "status" {}
     /**Spec holds information about the request being evaluated*/
     SubjectAccessReviewSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}