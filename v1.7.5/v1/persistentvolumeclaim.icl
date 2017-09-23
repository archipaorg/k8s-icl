take persistentvolumeclaimstatus,
     persistentvolumeclaimspec,
     objectmeta

/**PersistentVolumeClaim is a user's request for and claim to a persistent volume*/
::orch "kubernetes" "PersistentVolumeClaim" as PersistentVolumeClaim @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "PersistentVolumeClaim",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Status represents the current information/status of a persistent volume claim. Read-only.
      More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims*/
     PersistentVolumeClaimStatus "status" {}
     /**Spec defines the desired characteristics of a volume requested by a pod author. More info:
      https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims*/
     PersistentVolumeClaimSpec "spec" {}
     /**Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}