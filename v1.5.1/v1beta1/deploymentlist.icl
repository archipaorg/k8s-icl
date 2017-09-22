/**DeploymentList is a list of Deployments.*/
::orch "kubernetes" "DeploymentList" as DeploymentList @items, @metadata {
     /**Items is the list of Deployments.*/
     items = null
}