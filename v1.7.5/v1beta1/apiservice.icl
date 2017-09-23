take apiservicestatus,
     apiservicespec,
     ../v1/objectmeta

/**APIService represents a server for a particular GroupVersion. Name must be "version.group".*/
::orch "kubernetes" "APIService" as APIService @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Status contains derived information about an API server*/
     APIServiceStatus "status" {}
     /**Spec contains information for locating and communicating with a server*/
     APIServiceSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}