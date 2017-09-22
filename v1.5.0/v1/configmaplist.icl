/**ConfigMapList is a resource containing a list of ConfigMap objects.*/
::orch "kubernetes" "ConfigMapList" as ConfigMapList @items, @metadata {
     /**Items is the list of ConfigMaps.*/
     items = null
}