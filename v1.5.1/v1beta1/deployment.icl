take deploymentstatus,
     deploymentspec,
     ../v1/objectmeta

/**Deployment enables declarative updates for Pods and ReplicaSets.*/
::orch "kubernetes" "Deployment" as Deployment @status, @spec, @metadata {
     /**Most recently observed status of the Deployment.*/
     DeploymentStatus "status" {}
     /**Specification of the desired behavior of the Deployment.*/
     DeploymentSpec "spec" {}
     /**Standard object metadata.*/
     ObjectMeta "metadata" {}
}