/**IngressList is a collection of Ingress.*/
::orch "kubernetes" "IngressList" as IngressList @items, @metadata {
     /**Items is the list of Ingress.*/
     items = null
}