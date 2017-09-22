/**DaemonSetStatus represents the current status of a daemon set.*/
::orch "kubernetes" "DaemonSetStatus" as DaemonSetStatus @collisionCount, @observedGeneration, @numberAvailable, @desiredNumberScheduled, @numberUnavailable, @currentNumberScheduled, @numberReady, @numberMisscheduled, @updatedNumberScheduled {
     /**Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as
      a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.*/
     collisionCount = null,
     /**The most recent generation observed by the daemon set controller.*/
     observedGeneration = null,
     /**The number of nodes that should be running the daemon pod and have one or more of the daemon
      pod running and available (ready for at least spec.minReadySeconds)*/
     numberAvailable = null,
     /**The total number of nodes that should be running the daemon pod (including nodes correctly
      running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/*/
     desiredNumberScheduled = null,
     /**The number of nodes that should be running the daemon pod and have none of the daemon pod
      running and available (ready for at least spec.minReadySeconds)*/
     numberUnavailable = null,
     /**The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon
      pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/*/
     currentNumberScheduled = null,
     /**The number of nodes that should be running the daemon pod and have one or more of the daemon
      pod running and ready.*/
     numberReady = null,
     /**The number of nodes that are running the daemon pod, but are not supposed to run the daemon
      pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/*/
     numberMisscheduled = null,
     /**The total number of nodes that are running updated daemon pod*/
     updatedNumberScheduled = null
}