take ../v1/time

/**HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.*/
::orch "kubernetes" "HorizontalPodAutoscalerStatus" as HorizontalPodAutoscalerStatus @desiredReplicas, @observedGeneration, @conditions, @currentReplicas, @lastScaleTime, @currentMetrics {
     /**desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as
      last calculated by the autoscaler.*/
     desiredReplicas = null,
     /**observedGeneration is the most recent generation observed by this autoscaler.*/
     observedGeneration = null,
     /**conditions is the set of conditions required for this autoscaler to scale its target, and
      indicates whether or not those conditions are met.*/
     conditions = null,
     /**currentReplicas is current number of replicas of pods managed by this autoscaler, as last
      seen by the autoscaler.*/
     currentReplicas = null,
     /**currentMetrics is the last read state of the metrics used by this autoscaler.*/
     currentMetrics = null,
     /**lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used
      by the autoscaler to control how often the number of pods is changed.*/
     Time "lastScaleTime" {}
}