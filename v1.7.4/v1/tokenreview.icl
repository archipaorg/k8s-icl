take tokenreviewstatus,
     tokenreviewspec,
     objectmeta

/**TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests
 may be cached by the webhook token authenticator plugin in the kube-apiserver.*/
::orch "kubernetes" "TokenReview" as TokenReview @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "TokenReview",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Status is filled in by the server and indicates whether the request can be authenticated.*/
     TokenReviewStatus "status" {}
     /**Spec holds information about the request being evaluated*/
     TokenReviewSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}