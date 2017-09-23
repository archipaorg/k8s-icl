/**ScaleSpec describes the attributes of a scale subresource.*/
::orch "kubernetes" "ScaleSpec" as ScaleSpec @replicas {
     /**desired number of instances for the scaled object.*/
     replicas = null
}