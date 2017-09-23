take ../v1/labelselector

/**PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.*/
::orch "kubernetes" "PodDisruptionBudgetSpec" as PodDisruptionBudgetSpec @minAvailable, @selector {
     /**Label query over pods whose evictions are managed by the disruption budget.*/
     LabelSelector "selector" {}
}