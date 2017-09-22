take roleref,
     ../v1/objectmeta

/**ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole
 in the global namespace, and adds who information via Subject.*/
::orch "kubernetes" "ClusterRoleBinding" as ClusterRoleBinding @roleRef, @subjects, @metadata {
     /**Subjects holds references to the objects the role applies to.*/
     subjects = null,
     /**RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot
      be resolved, the Authorizer must return an error.*/
     RoleRef "roleRef" {}
     /**Standard object's metadata.*/
     ObjectMeta "metadata" {}
}