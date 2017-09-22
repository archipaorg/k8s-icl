/**ResourceFieldSelector represents container resources (cpu, memory) and their output format*/
::orch "kubernetes" "ResourceFieldSelector" as ResourceFieldSelector @containerName, @resource, @divisor {
     /**Container name: required for volumes, optional for env vars*/
     containerName = null,
     /**Required: resource to select*/
     resource = null
}