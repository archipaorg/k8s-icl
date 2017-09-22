take nonresourceattributes,
     resourceattributes

/**SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes
 and NonResourceAuthorizationAttributes must be set*/
::orch "kubernetes" "SubjectAccessReviewSpec" as SubjectAccessReviewSpec @extra, @nonResourceAttributes, @group, @user, @resourceAttributes {
     /**Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that
      is input to the authorizer it needs a reflection here.*/
     extra = null,
     /**Groups is the groups you're testing for.*/
     group = null,
     /**User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted
      as "What if User were not a member of any groups*/
     user = null,
     /**NonResourceAttributes describes information for a non-resource access request*/
     NonResourceAttributes "nonResourceAttributes" {}
     /**ResourceAuthorizationAttributes describes information for a resource access request*/
     ResourceAttributes "resourceAttributes" {}
}