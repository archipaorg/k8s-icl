take resourceattributes,
     nonresourceattributes

/**SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes
 and NonResourceAuthorizationAttributes must be set*/
::orch "kubernetes" "SubjectAccessReviewSpec" as SubjectAccessReviewSpec @resourceAttributes, @nonResourceAttributes, @group, @uid, @extra, @user {
     /**Groups is the groups you're testing for.*/
     group = null,
     /**UID information about the requesting user.*/
     uid = null,
     /**Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that
      is input to the authorizer it needs a reflection here.*/
     extra = null,
     /**User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted
      as "What if User were not a member of any groups*/
     user = null,
     /**ResourceAuthorizationAttributes describes information for a resource access request*/
     ResourceAttributes "resourceAttributes" {}
     /**NonResourceAttributes describes information for a non-resource access request*/
     NonResourceAttributes "nonResourceAttributes" {}
}