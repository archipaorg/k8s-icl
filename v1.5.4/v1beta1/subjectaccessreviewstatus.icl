/**SubjectAccessReviewStatus*/
::orch "kubernetes" "SubjectAccessReviewStatus" as SubjectAccessReviewStatus @reason, @evaluationError, @allowed {
     /**Reason is optional.  It indicates why a request was allowed or denied.*/
     reason = null,
     /**EvaluationError is an indication that some error occurred during the authorization check.
      It is entirely possible to get an error and be able to continue determine authorization
      status in spite of it. For instance, RBAC can be missing a role, but enough roles are still
      present and bound to reason about the request.*/
     evaluationError = null,
     /**Allowed is required.  True if the action would be allowed, false otherwise.*/
     allowed = null
}