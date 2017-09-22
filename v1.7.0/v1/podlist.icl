/**PodList is a list of Pods.*/
::orch "kubernetes" "PodList" as PodList @items, @kind, @apiVersion, @metadata {
     /**List of pods. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "PodList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1"
}