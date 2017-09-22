take ingressstatus,
     ingressspec,
     ../v1/objectmeta

/**Ingress is a collection of rules that allow inbound connections to reach the endpoints defined
 by a backend. An Ingress can be configured to give services externally-reachable urls,
 load balance traffic, terminate SSL, offer name based virtual hosting etc.*/
::orch "kubernetes" "Ingress" as Ingress @status, @spec, @metadata {
     /**Status is the current state of the Ingress. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     IngressStatus "status" {}
     /**Spec is the desired state of the Ingress. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     IngressSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}