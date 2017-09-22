take replicationcontrollerstatus,
     replicationcontrollerspec,
     objectmeta

/**ReplicationController represents the configuration of a replication controller.*/
::orch "kubernetes" "ReplicationController" as ReplicationController @status, @spec, @metadata {
     /**Status is the most recently observed status of the replication controller. This data may
      be out of date by some window of time. Populated by the system. Read-only. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ReplicationControllerStatus "status" {}
     /**Spec defines the specification of the desired behavior of the replication controller. More
      info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ReplicationControllerSpec "spec" {}
     /**If the Labels of a ReplicationController are empty, they are defaulted to be the same as
      the Pod(s) that the replication controller manages. Standard object's metadata. More info:
      http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}