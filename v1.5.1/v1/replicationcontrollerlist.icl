/**ReplicationControllerList is a collection of replication controllers.*/
::orch "kubernetes" "ReplicationControllerList" as ReplicationControllerList @items, @metadata {
     /**List of replication controllers. More info: http://kubernetes.io/docs/user-guide/replication-controller*/
     items = null
}