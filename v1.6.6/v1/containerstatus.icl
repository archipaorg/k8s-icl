take containerstate,
     containerstate

/**ContainerStatus contains details for the current status of this container.*/
::orch "kubernetes" "ContainerStatus" as ContainerStatus @restartCount, @name, @image, @imageID, @state, @ready, @lastState, @containerID {
     /**The number of times the container has been restarted, currently based on the number of dead
      containers that have not yet been removed. Note that this is calculated from dead containers.
      But those containers are subject to garbage collection. This value will get capped at 5
      by GC.*/
     restartCount = null,
     /**This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.*/
     name = null,
     /**The image the container is running. More info: http://kubernetes.io/docs/user-guide/images*/
     image = null,
     /**ImageID of the container's image.*/
     imageID = null,
     /**Specifies whether the container has passed its readiness probe.*/
     ready = null,
     /**Container's ID in the format 'docker://<container_id>'. More info: http://kubernetes.io/docs/user-guide/container-environment#container-information*/
     containerID = null,
     /**Details about the container's current condition.*/
     ContainerState "state" {}
     /**Details about the container's last termination condition.*/
     ContainerState "lastState" {}
}