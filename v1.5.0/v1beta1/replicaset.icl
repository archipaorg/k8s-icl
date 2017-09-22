take replicasetstatus,
     replicasetspec,
     ../v1/objectmeta

/**ReplicaSet represents the configuration of a ReplicaSet.*/
::orch "kubernetes" "ReplicaSet" as ReplicaSet @status, @spec, @metadata {
     /**Status is the most recently observed status of the ReplicaSet. This data may be out of date
      by some window of time. Populated by the system. Read-only. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ReplicaSetStatus "status" {}
     /**Spec defines the specification of the desired behavior of the ReplicaSet. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ReplicaSetSpec "spec" {}
     /**If the Labels of a ReplicaSet are empty, they are defaulted to be the same as the Pod(s)
      that the ReplicaSet manages. Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}