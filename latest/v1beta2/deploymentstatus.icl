/**DeploymentStatus is the most recently observed status of the Deployment.*/
::orch "kubernetes" "DeploymentStatus" as DeploymentStatus @collisionCount, @replicas, @observedGeneration, @updatedReplicas, @availableReplicas, @unavailableReplicas, @readyReplicas, @conditions {
     /**Count of hash collisions for the Deployment. The Deployment controller uses this field as
      a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.*/
     collisionCount = null,
     /**Total number of non-terminated pods targeted by this deployment (their labels match the
      selector).*/
     replicas = null,
     /**The generation observed by the deployment controller.*/
     observedGeneration = null,
     /**Total number of non-terminated pods targeted by this deployment that have the desired template
      spec.*/
     updatedReplicas = null,
     /**Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.*/
     availableReplicas = null,
     /**Total number of unavailable pods targeted by this deployment. This is the total number of
      pods that are still required for the deployment to have 100% available capacity. They may
      either be pods that are running but not yet available or pods that still have not been
      created.*/
     unavailableReplicas = null,
     /**Total number of ready pods targeted by this deployment.*/
     readyReplicas = null,
     /**Represents the latest available observations of a deployment's current state.*/
     conditions = null
}