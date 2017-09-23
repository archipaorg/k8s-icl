/**StatefulSetStatus represents the current state of a StatefulSet.*/
::orch "kubernetes" "StatefulSetStatus" as StatefulSetStatus @updateRevision, @collisionCount, @replicas, @observedGeneration, @currentReplicas, @updatedReplicas, @currentRevision, @readyReplicas {
     /**updateRevision, if not empty, indicates the version of the StatefulSet used to generate
      Pods in the sequence [replicas-updatedReplicas,replicas)*/
     updateRevision = null,
     /**collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller
      uses this field as a collision avoidance mechanism when it needs to create the name for
      the newest ControllerRevision.*/
     collisionCount = null,
     /**replicas is the number of Pods created by the StatefulSet controller.*/
     replicas = null,
     /**observedGeneration is the most recent generation observed for this StatefulSet. It corresponds
      to the StatefulSet's generation, which is updated on mutation by the API Server.*/
     observedGeneration = null,
     /**currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet
      version indicated by currentRevision.*/
     currentReplicas = null,
     /**updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet
      version indicated by updateRevision.*/
     updatedReplicas = null,
     /**currentRevision, if not empty, indicates the version of the StatefulSet used to generate
      Pods in the sequence [0,currentReplicas).*/
     currentRevision = null,
     /**readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready
      Condition.*/
     readyReplicas = null
}