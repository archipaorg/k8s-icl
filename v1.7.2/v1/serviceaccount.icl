/**ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral
 systems, for an identity * a principal that can be authenticated and authorized * a set
 of secrets*/
::orch "kubernetes" "ServiceAccount" as ServiceAccount @kind, @secrets, @metadata, @imagePullSecrets, @apiVersion, @automountServiceAccountToken {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ServiceAccount",
     /**Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount.
      More info: https://kubernetes.io/docs/concepts/configuration/secret*/
     secrets = null,
     /**ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling
      any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from
      Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed
      by the kubelet. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod*/
     imagePullSecrets = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**AutomountServiceAccountToken indicates whether pods running as this service account should
      have an API token automatically mounted. Can be overridden at the pod level.*/
     automountServiceAccountToken = null
}