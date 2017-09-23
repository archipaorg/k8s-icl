take resourcequotastatus,
     resourcequotaspec,
     objectmeta

/**ResourceQuota sets aggregate quota restrictions enforced per namespace*/
::orch "kubernetes" "ResourceQuota" as ResourceQuota @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ResourceQuota",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Status defines the actual enforced quota and its current usage. https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     ResourceQuotaStatus "status" {}
     /**Spec defines the desired quota. https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     ResourceQuotaSpec "spec" {}
     /**Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}