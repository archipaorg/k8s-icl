take servicestatus,
     servicespec,
     objectmeta

/**Service is a named abstraction of software service (for example, mysql) consisting of local
 port (for example 3306) that the proxy listens on, and the selector that determines which
 pods will answer requests sent through the proxy.*/
::orch "kubernetes" "Service" as Service @status, @spec, @metadata {
     /**Most recently observed status of the service. Populated by the system. Read-only. More info:
      http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ServiceStatus "status" {}
     /**Spec defines the behavior of a service. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ServiceSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}