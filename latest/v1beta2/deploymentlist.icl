take ../v1/listmeta

/**DeploymentList is a list of Deployments.*/
::orch "kubernetes" "DeploymentList" as DeploymentList @items, @kind, @apiVersion, @metadata {
     /**Items is the list of Deployments.*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "DeploymentList",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta2",
     /**Standard list metadata.*/
     ListMeta "metadata" {}
}