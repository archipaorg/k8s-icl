take podstatus,
     podspec,
     objectmeta

/**Pod is a collection of containers that can run on a host. This resource is created by clients
 and scheduled onto hosts.*/
::orch "kubernetes" "Pod" as Pod @status, @spec, @metadata {
     /**Most recently observed status of the pod. This data may not be up to date. Populated by
      the system. Read-only. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     PodStatus "status" {}
     /**Specification of the desired behavior of the pod. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     PodSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}