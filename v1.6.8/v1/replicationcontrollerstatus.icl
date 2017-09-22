/**ReplicationControllerStatus represents the current status of a replication controller.*/
::orch "kubernetes" "ReplicationControllerStatus" as ReplicationControllerStatus @availableReplicas, @replicas, @observedGeneration, @readyReplicas, @conditions, @fullyLabeledReplicas {
     /**The number of available replicas (ready for at least minReadySeconds) for this replication
      controller.*/
     availableReplicas = null,
     /**Replicas is the most recently oberved number of replicas. More info: http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller*/
     replicas = null,
     /**ObservedGeneration reflects the generation of the most recently observed replication controller.*/
     observedGeneration = null,
     /**The number of ready replicas for this replication controller.*/
     readyReplicas = null,
     /**Represents the latest available observations of a replication controller's current state.*/
     conditions = null,
     /**The number of pods that have labels matching the labels of the pod template of the replication
      controller.*/
     fullyLabeledReplicas = null
}