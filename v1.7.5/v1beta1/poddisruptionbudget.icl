take poddisruptionbudgetstatus,
     poddisruptionbudgetspec,
     ../v1/objectmeta

/**PodDisruptionBudget is an object to define the max disruption that can be caused to a collection
 of pods*/
::orch "kubernetes" "PodDisruptionBudget" as PodDisruptionBudget @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "PodDisruptionBudget",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Most recently observed status of the PodDisruptionBudget.*/
     PodDisruptionBudgetStatus "status" {}
     /**Specification of the desired behavior of the PodDisruptionBudget.*/
     PodDisruptionBudgetSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}