/**DaemonSetStatus represents the current status of a daemon set.*/
::orch "kubernetes" "DaemonSetStatus" as DaemonSetStatus @currentNumberScheduled, @numberReady, @desiredNumberScheduled, @numberMisscheduled {
     /**CurrentNumberScheduled is the number of nodes that are running at least 1 daemon pod and
      are supposed to run the daemon pod. More info: http://releases.k8s.io/HEAD/docs/admin/daemons.md*/
     currentNumberScheduled = null,
     /**NumberReady is the number of nodes that should be running the daemon pod and have one or
      more of the daemon pod running and ready.*/
     numberReady = null,
     /**DesiredNumberScheduled is the total number of nodes that should be running the daemon pod
      (including nodes correctly running the daemon pod). More info: http://releases.k8s.io/HEAD/docs/admin/daemons.md*/
     desiredNumberScheduled = null,
     /**NumberMisscheduled is the number of nodes that are running the daemon pod, but are not supposed
      to run the daemon pod. More info: http://releases.k8s.io/HEAD/docs/admin/daemons.md*/
     numberMisscheduled = null
}