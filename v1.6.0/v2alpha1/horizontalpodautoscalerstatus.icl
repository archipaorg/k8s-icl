take ../v1/time

/**HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.*/
::orch "kubernetes" "HorizontalPodAutoscalerStatus" as HorizontalPodAutoscalerStatus @observedGeneration, @currentMetrics, @currentReplicas, @lastScaleTime, @desiredReplicas {
     /**observedGeneration is the most recent generation observed by this autoscaler.*/
     observedGeneration = null,
     /**currentMetrics is the last read state of the metrics used by this autoscaler.*/
     currentMetrics = null,
     /**currentReplicas is current number of replicas of pods managed by this autoscaler, as last
      seen by the autoscaler.*/
     currentReplicas = null,
     /**desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as
      last calculated by the autoscaler.*/
     desiredReplicas = null,
     /**lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used
      by the autoscaler to control how often the number of pods is changed.*/
     Time "lastScaleTime" {}
}