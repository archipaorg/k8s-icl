/**current status of a horizontal pod autoscaler*/
::orch "kubernetes" "HorizontalPodAutoscalerStatus" as HorizontalPodAutoscalerStatus @observedGeneration, @currentReplicas, @lastScaleTime, @currentCPUUtilizationPercentage, @desiredReplicas {
     /**most recent generation observed by this autoscaler.*/
     observedGeneration = null,
     /**current number of replicas of pods managed by this autoscaler.*/
     currentReplicas = null,
     /**current average CPU utilization over all pods, represented as a percentage of requested
      CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.*/
     currentCPUUtilizationPercentage = null,
     /**desired number of replicas of pods managed by this autoscaler.*/
     desiredReplicas = null
}