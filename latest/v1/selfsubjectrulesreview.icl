take subjectrulesreviewstatus,
     selfsubjectrulesreviewspec,
     objectmeta

/**SelfSubjectRulesReview enumerates the set of actions the current user can perform within
 a namespace. The returned list of actions may be incomplete depending on the server's authorization
 mode, and any errors experienced during the evaluation. SelfSubjectRulesReview should be
 used by UIs to show/hide actions, or to quickly let an end user reason about their permissions.
 It should NOT Be used by external systems to drive authorization decisions as this raises
 confused deputy, cache lifetime/revocation, and correctness concerns. SubjectAccessReview,
 and LocalAccessReview are the correct way to defer authorization decisions to the API server.*/
::orch "kubernetes" "SelfSubjectRulesReview" as SelfSubjectRulesReview @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "SelfSubjectRulesReview",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Status is filled in by the server and indicates the set of actions a user can perform.*/
     SubjectRulesReviewStatus "status" {}
     /**Spec holds information about the request being evaluated.*/
     SelfSubjectRulesReviewSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}