/**StatefulSetStatus represents the current state of a StatefulSet.*/
::orch "kubernetes" "StatefulSetStatus" as StatefulSetStatus @updatedReplicas, @updateRevision, @readyReplicas, @replicas, @observedGeneration, @currentRevision, @currentReplicas {
     /**updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet
      version indicated by updateRevision.*/
     updatedReplicas = null,
     /**updateRevision, if not empty, indicates the version of the StatefulSet used to generate
      Pods in the sequence [replicas-updatedReplicas,replicas)*/
     updateRevision = null,
     /**readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready
      Condition.*/
     readyReplicas = null,
     /**replicas is the number of Pods created by the StatefulSet controller.*/
     replicas = null,
     /**observedGeneration is the most recent generation observed for this StatefulSet. It corresponds
      to the StatefulSet's generation, which is updated on mutation by the API Server.*/
     observedGeneration = null,
     /**currentRevision, if not empty, indicates the version of the StatefulSet used to generate
      Pods in the sequence [0,currentReplicas).*/
     currentRevision = null,
     /**currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet
      version indicated by currentRevision.*/
     currentReplicas = null
}