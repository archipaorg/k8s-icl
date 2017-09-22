take objectmeta

/**ConfigMap holds configuration data for pods to consume.*/
::orch "kubernetes" "ConfigMap" as ConfigMap @data, @metadata {
     /**Data contains the configuration data. Each key must be a valid DNS_SUBDOMAIN with an optional
      leading dot.*/
     data = null,
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}