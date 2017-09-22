take ../v1/objectmeta

/**Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by
 a RoleBinding.*/
::orch "kubernetes" "Role" as Role @rules, @kind, @apiVersion, @metadata {
     /**Rules holds all the PolicyRules for this Role*/
     rules = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Standard object's metadata.*/
     ObjectMeta "metadata" {}
}