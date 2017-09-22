take replicationcontrollerstatus,
     replicationcontrollerspec

/**ReplicationController represents the configuration of a replication controller.*/
::orch "kubernetes" "ReplicationController" as ReplicationController @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Status is the most recently observed status of the replication controller. This data may
      be out of date by some window of time. Populated by the system. Read-only. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ReplicationControllerStatus "status" {}
     /**Spec defines the specification of the desired behavior of the replication controller. More
      info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ReplicationControllerSpec "spec" {}
}