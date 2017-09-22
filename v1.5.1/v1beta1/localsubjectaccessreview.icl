take subjectaccessreviewstatus,
     subjectaccessreviewspec,
     ../v1/objectmeta

/**LocalSubjectAccessReview checks whether or not a user or group can perform an action in
 a given namespace. Having a namespace scoped resource makes it much easier to grant namespace
 scoped policy that includes permissions checking.*/
::orch "kubernetes" "LocalSubjectAccessReview" as LocalSubjectAccessReview @status, @spec, @metadata {
     /**Status is filled in by the server and indicates whether the request is allowed or not*/
     SubjectAccessReviewStatus "status" {}
     /**Spec holds information about the request being evaluated.  spec.namespace must be equal
      to the namespace you made the request against.  If empty, it is defaulted.*/
     SubjectAccessReviewSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}