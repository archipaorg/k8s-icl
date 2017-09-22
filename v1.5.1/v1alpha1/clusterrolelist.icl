/**ClusterRoleList is a collection of ClusterRoles*/
::orch "kubernetes" "ClusterRoleList" as ClusterRoleList @items, @metadata {
     /**Items is a list of ClusterRoles*/
     items = null
}