take nodestatus,
     nodespec,
     objectmeta

/**Node is a worker node in Kubernetes. Each node will have a unique identifier in the cache
 (i.e. in etcd).*/
::orch "kubernetes" "Node" as Node @status, @spec, @metadata {
     /**Most recently observed status of the node. Populated by the system. Read-only. More info:
      http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     NodeStatus "status" {}
     /**Spec defines the behavior of a node. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     NodeSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}