/**ClusterRoleBindingList is a collection of ClusterRoleBindings*/
::orch "kubernetes" "ClusterRoleBindingList" as ClusterRoleBindingList @items, @metadata {
     /**Items is a list of ClusterRoleBindings*/
     items = null
}