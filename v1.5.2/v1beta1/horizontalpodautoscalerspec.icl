take subresourcereference,
     cputargetutilization

/**specification of a horizontal pod autoscaler.*/
::orch "kubernetes" "HorizontalPodAutoscalerSpec" as HorizontalPodAutoscalerSpec @minReplicas, @scaleRef, @cpuUtilization, @maxReplicas {
     /**lower limit for the number of pods that can be set by the autoscaler, default 1.*/
     minReplicas = null,
     /**upper limit for the number of pods that can be set by the autoscaler; cannot be smaller
      than MinReplicas.*/
     maxReplicas = null,
     /**reference to Scale subresource; horizontal pod autoscaler will learn the current resource
      consumption from its status, and will set the desired number of pods by modifying its spec.*/
     SubresourceReference "scaleRef" {}
     /**target average CPU utilization (represented as a percentage of requested CPU) over all the
      pods; if not specified it defaults to the target CPU utilization at 80% of the requested
      resources.*/
     CPUTargetUtilization "cpuUtilization" {}
}