take time

/**ContainerStateRunning is a running state of a container.*/
::orch "kubernetes" "ContainerStateRunning" as ContainerStateRunning @startedAt {
     /**Time at which the container was last (re-)started*/
     Time "startedAt" {}
}