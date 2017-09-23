take nonresourceattributes,
     resourceattributes

/**SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes
 and NonResourceAuthorizationAttributes must be set*/
::orch "kubernetes" "SelfSubjectAccessReviewSpec" as SelfSubjectAccessReviewSpec @nonResourceAttributes, @resourceAttributes {
     /**NonResourceAttributes describes information for a non-resource access request*/
     NonResourceAttributes "nonResourceAttributes" {}
     /**ResourceAuthorizationAttributes describes information for a resource access request*/
     ResourceAttributes "resourceAttributes" {}
}