take horizontalpodautoscalerstatus,
     horizontalpodautoscalerspec

/**HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically
 manages the replica count of any resource implementing the scale subresource based on the
 metrics specified.*/
::orch "kubernetes" "HorizontalPodAutoscaler" as HorizontalPodAutoscaler @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**status is the current information about the autoscaler.*/
     HorizontalPodAutoscalerStatus "status" {}
     /**spec is the specification for the behaviour of the autoscaler. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.*/
     HorizontalPodAutoscalerSpec "spec" {}
}