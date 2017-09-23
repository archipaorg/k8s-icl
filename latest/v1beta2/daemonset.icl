take daemonsetstatus,
     daemonsetspec,
     ../v1/objectmeta

/**DaemonSet represents the configuration of a daemon set.*/
::orch "kubernetes" "DaemonSet" as DaemonSet @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "DaemonSet",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta2",
     /**The current status of this daemon set. This data may be out of date by some window of time.
      Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     DaemonSetStatus "status" {}
     /**The desired behavior of this daemon set. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     DaemonSetSpec "spec" {}
     /**Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}