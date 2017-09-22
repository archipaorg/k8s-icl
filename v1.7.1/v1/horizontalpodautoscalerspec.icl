take crossversionobjectreference

/**specification of a horizontal pod autoscaler.*/
::orch "kubernetes" "HorizontalPodAutoscalerSpec" as HorizontalPodAutoscalerSpec @minReplicas, @scaleTargetRef, @targetCPUUtilizationPercentage, @maxReplicas {
     /**lower limit for the number of pods that can be set by the autoscaler, default 1.*/
     minReplicas = null,
     /**target average CPU utilization (represented as a percentage of requested CPU) over all the
      pods; if not specified the default autoscaling policy will be used.*/
     targetCPUUtilizationPercentage = null,
     /**upper limit for the number of pods that can be set by the autoscaler; cannot be smaller
      than MinReplicas.*/
     maxReplicas = null,
     /**reference to scaled resource; horizontal pod autoscaler will learn the current resource
      consumption and will set the desired number of pods by using its Scale subresource.*/
     CrossVersionObjectReference "scaleTargetRef" {}
}