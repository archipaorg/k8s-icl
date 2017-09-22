/**DaemonSetList is a collection of daemon sets.*/
::orch "kubernetes" "DaemonSetList" as DaemonSetList @items, @metadata {
     /**Items is a list of daemon sets.*/
     items = null
}