take persistentvolumeclaimstatus,
     persistentvolumeclaimspec

/**PersistentVolumeClaim is a user's request for and claim to a persistent volume*/
::orch "kubernetes" "PersistentVolumeClaim" as PersistentVolumeClaim @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Status represents the current information/status of a persistent volume claim. Read-only.
      More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims*/
     PersistentVolumeClaimStatus "status" {}
     /**Spec defines the desired characteristics of a volume requested by a pod author. More info:
      http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims*/
     PersistentVolumeClaimSpec "spec" {}
}