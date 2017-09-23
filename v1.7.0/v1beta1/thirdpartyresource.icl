take ../v1/objectmeta

/**A ThirdPartyResource is a generic representation of a resource, it is used by add-ons and
 plugins to add new resource types to the API.  It consists of one or more Versions of the
 api.*/
::orch "kubernetes" "ThirdPartyResource" as ThirdPartyResource @kind, @metadata, @description, @apiVersion, @versions {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ThirdPartyResource",
     /**Description is the description of this object.*/
     description = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Versions are versions for this third party object*/
     versions = null,
     /**Standard object metadata*/
     ObjectMeta "metadata" {}
}