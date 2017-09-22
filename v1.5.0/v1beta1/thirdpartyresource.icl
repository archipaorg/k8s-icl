take ../v1/objectmeta

/**A ThirdPartyResource is a generic representation of a resource, it is used by add-ons and
 plugins to add new resource types to the API.  It consists of one or more Versions of the
 api.*/
::orch "kubernetes" "ThirdPartyResource" as ThirdPartyResource @metadata, @description, @versions {
     /**Description is the description of this object.*/
     description = null,
     /**Versions are versions for this third party object*/
     versions = null,
     /**Standard object metadata*/
     ObjectMeta "metadata" {}
}