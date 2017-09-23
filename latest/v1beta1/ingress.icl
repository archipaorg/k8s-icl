take ingressstatus,
     ingressspec,
     ../v1/objectmeta

/**Ingress is a collection of rules that allow inbound connections to reach the endpoints defined
 by a backend. An Ingress can be configured to give services externally-reachable urls,
 load balance traffic, terminate SSL, offer name based virtual hosting etc.*/
::orch "kubernetes" "Ingress" as Ingress @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "Ingress",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Status is the current state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     IngressStatus "status" {}
     /**Spec is the desired state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     IngressSpec "spec" {}
     /**Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}