take containerstateterminated,
     containerstaterunning,
     containerstatewaiting

/**ContainerState holds a possible state of container. Only one of its members may be specified.
 If none of them is specified, the default one is ContainerStateWaiting.*/
::orch "kubernetes" "ContainerState" as ContainerState @terminated, @running, @waiting {
     /**Details about a terminated container*/
     ContainerStateTerminated "terminated" {}
     /**Details about a running container*/
     ContainerStateRunning "running" {}
     /**Details about a waiting container*/
     ContainerStateWaiting "waiting" {}
}