take roleref

/**RoleBinding references a role, but does not contain it.  It can reference a Role in the
 same namespace or a ClusterRole in the global namespace. It adds who information via Subjects
 and namespace information by which namespace it exists in.  RoleBindings in a given namespace
 only have effect in that namespace.*/
::orch "kubernetes" "RoleBinding" as RoleBinding @roleRef, @kind, @subjects, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**Subjects holds references to the objects the role applies to.*/
     subjects = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace.
      If the RoleRef cannot be resolved, the Authorizer must return an error.*/
     RoleRef "roleRef" {}
}