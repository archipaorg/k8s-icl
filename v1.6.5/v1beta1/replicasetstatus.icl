/**ReplicaSetStatus represents the current status of a ReplicaSet.*/
::orch "kubernetes" "ReplicaSetStatus" as ReplicaSetStatus @availableReplicas, @replicas, @observedGeneration, @readyReplicas, @conditions, @fullyLabeledReplicas {
     /**The number of available replicas (ready for at least minReadySeconds) for this replica set.*/
     availableReplicas = null,
     /**Replicas is the most recently oberved number of replicas. More info: http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller*/
     replicas = null,
     /**ObservedGeneration reflects the generation of the most recently observed ReplicaSet.*/
     observedGeneration = null,
     /**The number of ready replicas for this replica set.*/
     readyReplicas = null,
     /**Represents the latest available observations of a replica set's current state.*/
     conditions = null,
     /**The number of pods that have labels matching the labels of the pod template of the replicaset.*/
     fullyLabeledReplicas = null
}