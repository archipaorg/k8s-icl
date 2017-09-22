take tokenreviewstatus,
     tokenreviewspec,
     ../v1/objectmeta

/**TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests
 may be cached by the webhook token authenticator plugin in the kube-apiserver.*/
::orch "kubernetes" "TokenReview" as TokenReview @status, @spec, @metadata {
     /**Status is filled in by the server and indicates whether the request can be authenticated.*/
     TokenReviewStatus "status" {}
     /**Spec holds information about the request being evaluated*/
     TokenReviewSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}