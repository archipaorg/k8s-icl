take ../v1/labelselector,
     rollbackconfig,
     ../v1/podtemplatespec,
     deploymentstrategy

/**DeploymentSpec is the specification of the desired behavior of the Deployment.*/
::orch "kubernetes" "DeploymentSpec" as DeploymentSpec @progressDeadlineSeconds, @replicas, @selector, @paused, @rollbackTo, @template, @revisionHistoryLimit, @strategy, @minReadySeconds {
     /**The maximum time in seconds for a deployment to make progress before it is considered to
      be failed. The deployment controller will continue to process failed deployments and a
      condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status.
      Once autoRollback is implemented, the deployment controller will automatically rollback
      failed deployments. Note that progress will not be estimated during the time a deployment
      is paused. This is not set by default.*/
     progressDeadlineSeconds = null,
     /**Number of desired pods. This is a pointer to distinguish between explicit zero and not specified.
      Defaults to 1.*/
     replicas = null,
     /**Indicates that the deployment is paused and will not be processed by the deployment controller.*/
     paused = null,
     /**The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish
      between explicit zero and not specified.*/
     revisionHistoryLimit = null,
     /**Minimum number of seconds for which a newly created pod should be ready without any of its
      container crashing, for it to be considered available. Defaults to 0 (pod will be considered
      available as soon as it is ready)*/
     minReadySeconds = null,
     /**Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the
      ones affected by this deployment.*/
     LabelSelector "selector" {}
     /**The config this deployment is rolling back to. Will be cleared after rollback is done.*/
     RollbackConfig "rollbackTo" {}
     /**Template describes the pods that will be created.*/
     PodTemplateSpec "template" {}
     /**The deployment strategy to use to replace existing pods with new ones.*/
     DeploymentStrategy "strategy" {}
}