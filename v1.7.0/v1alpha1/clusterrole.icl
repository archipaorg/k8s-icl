take ../v1/objectmeta

/**ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as
 a unit by a RoleBinding or ClusterRoleBinding.*/
::orch "kubernetes" "ClusterRole" as ClusterRole @rules, @kind, @apiVersion, @metadata {
     /**Rules holds all the PolicyRules for this ClusterRole*/
     rules = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ClusterRole",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1alpha1",
     /**Standard object's metadata.*/
     ObjectMeta "metadata" {}
}