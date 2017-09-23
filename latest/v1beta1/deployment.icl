take deploymentstatus,
     deploymentspec,
     ../v1/objectmeta

/**DEPRECATED - This group version of Deployment is deprecated by apps/v1beta2/Deployment.
 See the release notes for more information. Deployment enables declarative updates for
 Pods and ReplicaSets.*/
::orch "kubernetes" "Deployment" as Deployment @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "Deployment",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Most recently observed status of the Deployment.*/
     DeploymentStatus "status" {}
     /**Specification of the desired behavior of the Deployment.*/
     DeploymentSpec "spec" {}
     /**Standard object metadata.*/
     ObjectMeta "metadata" {}
}