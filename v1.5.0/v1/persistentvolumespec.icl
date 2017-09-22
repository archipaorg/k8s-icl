take objectreference

/**PersistentVolumeSpec is the specification of a persistent volume.*/
::orch "kubernetes" "PersistentVolumeSpec" as PersistentVolumeSpec @accessModes, @claimRef, @capacity, @persistentVolumeReclaimPolicy {
     /**AccessModes contains all ways the volume can be mounted. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes*/
     accessModes = null,
     /**A description of the persistent volume's resources and capacity. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#capacity*/
     capacity = null,
     /**What happens to a persistent volume when released from its claim. Valid options are Retain
      (default) and Recycle. Recycling must be supported by the volume plugin underlying this
      persistent volume. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#recycling-policy*/
     persistentVolumeReclaimPolicy = null,
     /**ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim.
      Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV
      and PVC. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#binding*/
     ObjectReference "claimRef" {}
}