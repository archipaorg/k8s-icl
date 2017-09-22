take ../v1/objectmeta

/**Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by
 a RoleBinding.*/
::orch "kubernetes" "Role" as Role @rules, @metadata {
     /**Rules holds all the PolicyRules for this Role*/
     rules = null,
     /**Standard object's metadata.*/
     ObjectMeta "metadata" {}
}