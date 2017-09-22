take servicestatus,
     servicespec

/**Service is a named abstraction of software service (for example, mysql) consisting of local
 port (for example 3306) that the proxy listens on, and the selector that determines which
 pods will answer requests sent through the proxy.*/
::orch "kubernetes" "Service" as Service @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "Service",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Most recently observed status of the service. Populated by the system. Read-only. More info:
      https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     ServiceStatus "status" {}
     /**Spec defines the behavior of a service. https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     ServiceSpec "spec" {}
}