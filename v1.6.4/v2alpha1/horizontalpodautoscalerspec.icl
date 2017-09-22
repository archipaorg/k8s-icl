take crossversionobjectreference

/**HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.*/
::orch "kubernetes" "HorizontalPodAutoscalerSpec" as HorizontalPodAutoscalerSpec @metrics, @minReplicas, @scaleTargetRef, @maxReplicas {
     /**metrics contains the specifications for which to use to calculate the desired replica count
      (the maximum replica count across all metrics will be used).  The desired replica count
      is calculated multiplying the ratio between the target value and the current value by the
      current number of pods.  Ergo, metrics used must decrease as the pod count is increased,
      and vice-versa.  See the individual metric source types for more information about how
      each type of metric must respond.*/
     metrics = null,
     /**minReplicas is the lower limit for the number of replicas to which the autoscaler can scale
      down. It defaults to 1 pod.*/
     minReplicas = null,
     /**maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale
      up. It cannot be less that minReplicas.*/
     maxReplicas = null,
     /**scaleTargetRef points to the target resource to scale, and is used to the pods for which
      metrics should be collected, as well as to actually change the replica count.*/
     CrossVersionObjectReference "scaleTargetRef" {}
}