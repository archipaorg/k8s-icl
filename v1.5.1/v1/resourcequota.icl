take resourcequotastatus,
     resourcequotaspec,
     objectmeta

/**ResourceQuota sets aggregate quota restrictions enforced per namespace*/
::orch "kubernetes" "ResourceQuota" as ResourceQuota @status, @spec, @metadata {
     /**Status defines the actual enforced quota and its current usage. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ResourceQuotaStatus "status" {}
     /**Spec defines the desired quota. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     ResourceQuotaSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}