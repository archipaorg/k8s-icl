take roleref,
     ../v1/objectmeta

/**RoleBinding references a role, but does not contain it.  It can reference a Role in the
 same namespace or a ClusterRole in the global namespace. It adds who information via Subjects
 and namespace information by which namespace it exists in.  RoleBindings in a given namespace
 only have effect in that namespace.*/
::orch "kubernetes" "RoleBinding" as RoleBinding @roleRef, @subjects, @metadata {
     /**Subjects holds references to the objects the role applies to.*/
     subjects = null,
     /**RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace.
      If the RoleRef cannot be resolved, the Authorizer must return an error.*/
     RoleRef "roleRef" {}
     /**Standard object's metadata.*/
     ObjectMeta "metadata" {}
}