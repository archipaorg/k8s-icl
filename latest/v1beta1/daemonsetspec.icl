take daemonsetupdatestrategy,
     ../v1/podtemplatespec,
     ../v1/labelselector

/**DaemonSetSpec is the specification of a daemon set.*/
::orch "kubernetes" "DaemonSetSpec" as DaemonSetSpec @updateStrategy, @template, @revisionHistoryLimit, @minReadySeconds, @templateGeneration, @selector {
     /**The number of old history to retain to allow rollback. This is a pointer to distinguish
      between explicit zero and not specified. Defaults to 10.*/
     revisionHistoryLimit = null,
     /**The minimum number of seconds for which a newly created DaemonSet pod should be ready without
      any of its container crashing, for it to be considered available. Defaults to 0 (pod will
      be considered available as soon as it is ready).*/
     minReadySeconds = null,
     /**DEPRECATED. A sequence number representing a specific generation of the template. Populated
      by the system. It can be set only during the creation.*/
     templateGeneration = null,
     /**An update strategy to replace existing DaemonSet pods with new pods.*/
     DaemonSetUpdateStrategy "updateStrategy" {}
     /**An object that describes the pod that will be created. The DaemonSet will create exactly
      one copy of this pod on every node that matches the template's node selector (or on every
      node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template*/
     PodTemplateSpec "template" {}
     /**A label query over pods that are managed by the daemon set. Must match in order to be controlled.
      If empty, defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors*/
     LabelSelector "selector" {}
}