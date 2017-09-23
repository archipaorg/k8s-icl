/**TokenReviewSpec is a description of the token authentication request.*/
::orch "kubernetes" "TokenReviewSpec" as TokenReviewSpec @token {
     /**Token is the opaque bearer token.*/
     token = null
}