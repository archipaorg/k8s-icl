take rollbackconfig

/**DeploymentRollback stores the information required to rollback a deployment.*/
::orch "kubernetes" "DeploymentRollback" as DeploymentRollback @name, @rollbackTo, @updatedAnnotations {
     /**Required: This must match the Name of a deployment.*/
     name = null,
     /**The annotations to be updated to a deployment*/
     updatedAnnotations = null,
     /**The config of this deployment rollback.*/
     RollbackConfig "rollbackTo" {}
}