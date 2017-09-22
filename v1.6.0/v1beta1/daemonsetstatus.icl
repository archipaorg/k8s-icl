/**DaemonSetStatus represents the current status of a daemon set.*/
::orch "kubernetes" "DaemonSetStatus" as DaemonSetStatus @numberReady, @observedGeneration, @numberAvailable, @desiredNumberScheduled, @numberUnavailable, @currentNumberScheduled, @numberMisscheduled, @updatedNumberScheduled {
     /**The number of nodes that should be running the daemon pod and have one or more of the daemon
      pod running and ready.*/
     numberReady = null,
     /**The most recent generation observed by the daemon set controller.*/
     observedGeneration = null,
     /**The number of nodes that should be running the daemon pod and have one or more of the daemon
      pod running and available (ready for at least spec.minReadySeconds)*/
     numberAvailable = null,
     /**The total number of nodes that should be running the daemon pod (including nodes correctly
      running the daemon pod). More info: http://releases.k8s.io/HEAD/docs/admin/daemons.md*/
     desiredNumberScheduled = null,
     /**The number of nodes that should be running the daemon pod and have none of the daemon pod
      running and available (ready for at least spec.minReadySeconds)*/
     numberUnavailable = null,
     /**The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon
      pod. More info: http://releases.k8s.io/HEAD/docs/admin/daemons.md*/
     currentNumberScheduled = null,
     /**The number of nodes that are running the daemon pod, but are not supposed to run the daemon
      pod. More info: http://releases.k8s.io/HEAD/docs/admin/daemons.md*/
     numberMisscheduled = null,
     /**The total number of nodes that are running updated daemon pod*/
     updatedNumberScheduled = null
}