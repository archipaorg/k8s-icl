/**ContainerStateWaiting is a waiting state of a container.*/
::orch "kubernetes" "ContainerStateWaiting" as ContainerStateWaiting @message, @reason {
     /**Message regarding why the container is not yet running.*/
     message = null,
     /**(brief) reason the container is not yet running.*/
     reason = null
}