take objectmeta

/**ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral
 systems, for an identity * a principal that can be authenticated and authorized * a set
 of secrets*/
::orch "kubernetes" "ServiceAccount" as ServiceAccount @secrets, @imagePullSecrets, @metadata {
     /**Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount.
      More info: http://kubernetes.io/docs/user-guide/secrets*/
     secrets = null,
     /**ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling
      any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from
      Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed
      by the kubelet. More info: http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret*/
     imagePullSecrets = null,
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}