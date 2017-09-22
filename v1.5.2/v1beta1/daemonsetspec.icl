take ../v1/podtemplatespec

/**DaemonSetSpec is the specification of a daemon set.*/
::orch "kubernetes" "DaemonSetSpec" as DaemonSetSpec @template, @selector {
     /**Template is the object that describes the pod that will be created. The DaemonSet will create
      exactly one copy of this pod on every node that matches the template's node selector (or
      on every node if no node selector is specified). More info: http://kubernetes.io/docs/user-guide/replication-controller#pod-template*/
     PodTemplateSpec "template" {}
}