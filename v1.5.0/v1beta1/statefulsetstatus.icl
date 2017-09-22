/**StatefulSetStatus represents the current state of a StatefulSet.*/
::orch "kubernetes" "StatefulSetStatus" as StatefulSetStatus @observedGeneration, @replicas {
     /**most recent generation observed by this autoscaler.*/
     observedGeneration = null,
     /**Replicas is the number of actual replicas.*/
     replicas = null
}