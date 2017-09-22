take ../v1/objectmeta

/**ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as
 a unit by a RoleBinding or ClusterRoleBinding.*/
::orch "kubernetes" "ClusterRole" as ClusterRole @rules, @metadata {
     /**Rules holds all the PolicyRules for this ClusterRole*/
     rules = null,
     /**Standard object's metadata.*/
     ObjectMeta "metadata" {}
}