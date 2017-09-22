take ../v1/podtemplatespec

/**ReplicaSetSpec is the specification of a ReplicaSet.*/
::orch "kubernetes" "ReplicaSetSpec" as ReplicaSetSpec @replicas, @minReadySeconds, @template, @selector {
     /**Replicas is the number of desired replicas. This is a pointer to distinguish between explicit
      zero and unspecified. Defaults to 1. More info: http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller*/
     replicas = null,
     /**Minimum number of seconds for which a newly created pod should be ready without any of its
      container crashing, for it to be considered available. Defaults to 0 (pod will be considered
      available as soon as it is ready)*/
     minReadySeconds = null,
     /**Template is the object that describes the pod that will be created if insufficient replicas
      are detected. More info: http://kubernetes.io/docs/user-guide/replication-controller#pod-template*/
     PodTemplateSpec "template" {}
}