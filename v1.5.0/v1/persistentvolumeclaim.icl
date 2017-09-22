take persistentvolumeclaimstatus,
     persistentvolumeclaimspec,
     objectmeta

/**PersistentVolumeClaim is a user's request for and claim to a persistent volume*/
::orch "kubernetes" "PersistentVolumeClaim" as PersistentVolumeClaim @status, @spec, @metadata {
     /**Status represents the current information/status of a persistent volume claim. Read-only.
      More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims*/
     PersistentVolumeClaimStatus "status" {}
     /**Spec defines the desired characteristics of a volume requested by a pod author. More info:
      http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims*/
     PersistentVolumeClaimSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}