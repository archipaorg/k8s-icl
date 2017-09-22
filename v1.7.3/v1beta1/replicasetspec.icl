take ../v1/podtemplatespec

/**ReplicaSetSpec is the specification of a ReplicaSet.*/
::orch "kubernetes" "ReplicaSetSpec" as ReplicaSetSpec @replicas, @minReadySeconds, @template, @selector {
     /**Replicas is the number of desired replicas. This is a pointer to distinguish between explicit
      zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller*/
     replicas = null,
     /**Minimum number of seconds for which a newly created pod should be ready without any of its
      container crashing, for it to be considered available. Defaults to 0 (pod will be considered
      available as soon as it is ready)*/
     minReadySeconds = null,
     /**Template is the object that describes the pod that will be created if insufficient replicas
      are detected. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template*/
     PodTemplateSpec "template" {}
}