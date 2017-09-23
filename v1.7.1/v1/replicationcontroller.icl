take replicationcontrollerstatus,
     replicationcontrollerspec,
     objectmeta

/**ReplicationController represents the configuration of a replication controller.*/
::orch "kubernetes" "ReplicationController" as ReplicationController @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ReplicationController",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Status is the most recently observed status of the replication controller. This data may
      be out of date by some window of time. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     ReplicationControllerStatus "status" {}
     /**Spec defines the specification of the desired behavior of the replication controller. More
      info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     ReplicationControllerSpec "spec" {}
     /**If the Labels of a ReplicationController are empty, they are defaulted to be the same as
      the Pod(s) that the replication controller manages. Standard object's metadata. More info:
      https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}