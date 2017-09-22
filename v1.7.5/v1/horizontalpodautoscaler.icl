take horizontalpodautoscalerstatus,
     horizontalpodautoscalerspec

/**configuration of a horizontal pod autoscaler.*/
::orch "kubernetes" "HorizontalPodAutoscaler" as HorizontalPodAutoscaler @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "HorizontalPodAutoscaler",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**current information about the autoscaler.*/
     HorizontalPodAutoscalerStatus "status" {}
     /**behaviour of autoscaler. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.*/
     HorizontalPodAutoscalerSpec "spec" {}
}