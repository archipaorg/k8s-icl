take roleref

/**ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole
 in the global namespace, and adds who information via Subject.*/
::orch "kubernetes" "ClusterRoleBinding" as ClusterRoleBinding @roleRef, @kind, @subjects, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ClusterRoleBinding",
     /**Subjects holds references to the objects the role applies to.*/
     subjects = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1alpha1",
     /**RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot
      be resolved, the Authorizer must return an error.*/
     RoleRef "roleRef" {}
}