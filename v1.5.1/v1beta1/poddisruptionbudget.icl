take poddisruptionbudgetstatus,
     poddisruptionbudgetspec,
     ../v1/objectmeta

/**PodDisruptionBudget is an object to define the max disruption that can be caused to a collection
 of pods*/
::orch "kubernetes" "PodDisruptionBudget" as PodDisruptionBudget @status, @spec, @metadata {
     /**Most recently observed status of the PodDisruptionBudget.*/
     PodDisruptionBudgetStatus "status" {}
     /**Specification of the desired behavior of the PodDisruptionBudget.*/
     PodDisruptionBudgetSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}