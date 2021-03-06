take ../v1/podtemplatespec,
     daemonsetupdatestrategy,
     ../v1/labelselector

/**DaemonSetSpec is the specification of a daemon set.*/
::orch "kubernetes" "DaemonSetSpec" as DaemonSetSpec @minReadySeconds, @template, @templateGeneration, @updateStrategy, @selector {
     /**The minimum number of seconds for which a newly created DaemonSet pod should be ready without
      any of its container crashing, for it to be considered available. Defaults to 0 (pod will
      be considered available as soon as it is ready).*/
     minReadySeconds = null,
     /**A sequence number representing a specific generation of the template. Populated by the system.
      It can be set only during the creation.*/
     templateGeneration = null,
     /**An object that describes the pod that will be created. The DaemonSet will create exactly
      one copy of this pod on every node that matches the template's node selector (or on every
      node if no node selector is specified). More info: http://kubernetes.io/docs/user-guide/replication-controller#pod-template*/
     PodTemplateSpec "template" {}
     /**An update strategy to replace existing DaemonSet pods with new pods.*/
     DaemonSetUpdateStrategy "updateStrategy" {}
     /**A label query over pods that are managed by the daemon set. Must match in order to be controlled.
      If empty, defaulted to labels on Pod template. More info: http://kubernetes.io/docs/user-guide/labels#label-selectors*/
     LabelSelector "selector" {}
}