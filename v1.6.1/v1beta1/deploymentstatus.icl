/**DeploymentStatus is the most recently observed status of the Deployment.*/
::orch "kubernetes" "DeploymentStatus" as DeploymentStatus @updatedReplicas, @availableReplicas, @replicas, @observedGeneration, @unavailableReplicas, @readyReplicas, @conditions {
     /**Total number of non-terminated pods targeted by this deployment that have the desired template
      spec.*/
     updatedReplicas = null,
     /**Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.*/
     availableReplicas = null,
     /**Total number of non-terminated pods targeted by this deployment (their labels match the
      selector).*/
     replicas = null,
     /**The generation observed by the deployment controller.*/
     observedGeneration = null,
     /**Total number of unavailable pods targeted by this deployment.*/
     unavailableReplicas = null,
     /**Total number of ready pods targeted by this deployment.*/
     readyReplicas = null,
     /**Represents the latest available observations of a deployment's current state.*/
     conditions = null
}