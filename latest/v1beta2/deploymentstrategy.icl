take rollingupdatedeployment

/**DeploymentStrategy describes how to replace existing pods with new ones.*/
::orch "kubernetes" "DeploymentStrategy" as DeploymentStrategy @rollingUpdate, @type {
     /**Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.*/
     type = null,
     /**Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.*/
     RollingUpdateDeployment "rollingUpdate" {}
}