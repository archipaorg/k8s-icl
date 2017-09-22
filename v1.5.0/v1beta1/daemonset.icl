take daemonsetstatus,
     daemonsetspec,
     ../v1/objectmeta

/**DaemonSet represents the configuration of a daemon set.*/
::orch "kubernetes" "DaemonSet" as DaemonSet @status, @spec, @metadata {
     /**Status is the current status of this daemon set. This data may be out of date by some window
      of time. Populated by the system. Read-only. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     DaemonSetStatus "status" {}
     /**Spec defines the desired behavior of this daemon set. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     DaemonSetSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}