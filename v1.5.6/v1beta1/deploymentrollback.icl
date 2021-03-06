take rollbackconfig

/**DeploymentRollback stores the information required to rollback a deployment.*/
::orch "kubernetes" "DeploymentRollback" as DeploymentRollback @rollbackTo, @kind, @name, @apiVersion, @updatedAnnotations {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**Required: This must match the Name of a deployment.*/
     name = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**The annotations to be updated to a deployment*/
     updatedAnnotations = null,
     /**The config of this deployment rollback.*/
     RollbackConfig "rollbackTo" {}
}