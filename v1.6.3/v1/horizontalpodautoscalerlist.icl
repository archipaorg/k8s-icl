take listmeta

/**list of horizontal pod autoscaler objects.*/
::orch "kubernetes" "HorizontalPodAutoscalerList" as HorizontalPodAutoscalerList @items, @kind, @apiVersion, @metadata {
     /**list of horizontal pod autoscaler objects.*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Standard list metadata.*/
     ListMeta "metadata" {}
}