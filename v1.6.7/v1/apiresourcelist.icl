/**APIResourceList is a list of APIResource, it is used to expose the name of the resources
 supported in a specific group and version, and if the resource is namespaced.*/
::orch "kubernetes" "APIResourceList" as APIResourceList @kind, @groupVersion, @apiVersion, @resources {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**groupVersion is the group and version this APIResourceList is for.*/
     groupVersion = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**resources contains the name of the resources and if they are namespaced.*/
     resources = null
}