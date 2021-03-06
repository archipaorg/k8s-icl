/**PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This
 volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource
 is, essentially, a wrapper around another type of volume that is owned by someone else
 (the system).*/
::orch "kubernetes" "PersistentVolumeClaimVolumeSource" as PersistentVolumeClaimVolumeSource @readOnly, @claimName {
     /**Will force the ReadOnly setting in VolumeMounts. Default false.*/
     readOnly = null,
     /**ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using
      this volume. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims*/
     claimName = null
}