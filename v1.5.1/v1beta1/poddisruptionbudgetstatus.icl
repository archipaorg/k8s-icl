/**PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget.
 Status may trail the actual state of a system.*/
::orch "kubernetes" "PodDisruptionBudgetStatus" as PodDisruptionBudgetStatus @observedGeneration, @expectedPods, @currentHealthy, @disruptionsAllowed, @disruptedPods, @desiredHealthy {
     /**Most recent generation observed when updating this PDB status. PodDisruptionsAllowed and
      other status informatio is valid only if observedGeneration equals to PDB's object generation.*/
     observedGeneration = null,
     /**total number of pods counted by this disruption budget*/
     expectedPods = null,
     /**current number of healthy pods*/
     currentHealthy = null,
     /**Number of pod disruptions that are currently allowed.*/
     disruptionsAllowed = null,
     /**DisruptedPods contains information about pods whose eviction was processed by the API server
      eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller.
      A pod will be in this map from the time when the API server processed the eviction request
      to the time when the pod is seen by PDB controller as having been marked for deletion (or
      after a timeout). The key in the map is the name of the pod and the value is the time when
      the API server processed the eviction request. If the deletion didn't occur and a pod is
      still there it will be removed from the list automatically by PodDisruptionBudget controller
      after some time. If everything goes smooth this map should be empty for the most of the
      time. Large number of entries in the map may indicate problems with pod deletions.*/
     disruptedPods = null,
     /**minimum desired number of healthy pods*/
     desiredHealthy = null
}