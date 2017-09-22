/**Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by
 a RoleBinding.*/
::orch "kubernetes" "Role" as Role @rules, @kind, @apiVersion, @metadata {
     /**Rules holds all the PolicyRules for this Role*/
     rules = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "Role",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1alpha1"
}