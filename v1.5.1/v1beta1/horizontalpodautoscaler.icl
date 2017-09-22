take horizontalpodautoscalerstatus,
     horizontalpodautoscalerspec,
     ../v1/objectmeta

/**configuration of a horizontal pod autoscaler.*/
::orch "kubernetes" "HorizontalPodAutoscaler" as HorizontalPodAutoscaler @status, @spec, @metadata {
     /**current information about the autoscaler.*/
     HorizontalPodAutoscalerStatus "status" {}
     /**behaviour of autoscaler. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.*/
     HorizontalPodAutoscalerSpec "spec" {}
     /**Standard object metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}