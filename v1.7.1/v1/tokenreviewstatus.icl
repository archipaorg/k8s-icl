take userinfo

/**TokenReviewStatus is the result of the token authentication request.*/
::orch "kubernetes" "TokenReviewStatus" as TokenReviewStatus @authenticated, @user, @error {
     /**Authenticated indicates that the token was associated with a known user.*/
     authenticated = null,
     /**Error indicates that the token couldn't be checked*/
     error = null,
     /**User is the UserInfo associated with the provided token.*/
     UserInfo "user" {}
}