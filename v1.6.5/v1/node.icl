take nodestatus,
     nodespec

/**Node is a worker node in Kubernetes. Each node will have a unique identifier in the cache
 (i.e. in etcd).*/
::orch "kubernetes" "Node" as Node @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Most recently observed status of the node. Populated by the system. Read-only. More info:
      http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     NodeStatus "status" {}
     /**Spec defines the behavior of a node. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     NodeSpec "spec" {}
}