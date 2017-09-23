take replicasetstatus,
     replicasetspec,
     ../v1/objectmeta

/**ReplicaSet represents the configuration of a ReplicaSet.*/
::orch "kubernetes" "ReplicaSet" as ReplicaSet @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ReplicaSet",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Status is the most recently observed status of the ReplicaSet. This data may be out of date
      by some window of time. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     ReplicaSetStatus "status" {}
     /**Spec defines the specification of the desired behavior of the ReplicaSet. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     ReplicaSetSpec "spec" {}
     /**If the Labels of a ReplicaSet are empty, they are defaulted to be the same as the Pod(s)
      that the ReplicaSet manages. Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}