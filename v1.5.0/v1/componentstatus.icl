take objectmeta

/**ComponentStatus (and ComponentStatusList) holds the cluster validation info.*/
::orch "kubernetes" "ComponentStatus" as ComponentStatus @conditions, @metadata {
     /**List of component conditions observed*/
     conditions = null,
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}