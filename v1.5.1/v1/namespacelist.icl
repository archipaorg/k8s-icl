/**NamespaceList is a list of Namespaces.*/
::orch "kubernetes" "NamespaceList" as NamespaceList @items, @metadata {
     /**Items is the list of Namespace objects in the list. More info: http://kubernetes.io/docs/user-guide/namespaces*/
     items = null
}