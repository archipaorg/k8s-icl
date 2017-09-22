take namespacestatus,
     namespacespec,
     objectmeta

/**Namespace provides a scope for Names. Use of multiple namespaces is optional.*/
::orch "kubernetes" "Namespace" as Namespace @status, @spec, @metadata {
     /**Status describes the current status of a Namespace. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     NamespaceStatus "status" {}
     /**Spec defines the behavior of the Namespace. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     NamespaceSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}