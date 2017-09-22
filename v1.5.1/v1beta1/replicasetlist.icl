/**ReplicaSetList is a collection of ReplicaSets.*/
::orch "kubernetes" "ReplicaSetList" as ReplicaSetList @items, @metadata {
     /**List of ReplicaSets. More info: http://kubernetes.io/docs/user-guide/replication-controller*/
     items = null
}