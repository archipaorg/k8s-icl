/**PersistentVolumeClaimStatus is the current status of a persistent volume claim.*/
::orch "kubernetes" "PersistentVolumeClaimStatus" as PersistentVolumeClaimStatus @phase, @accessModes, @capacity {
     /**Phase represents the current phase of PersistentVolumeClaim.*/
     phase = null,
     /**AccessModes contains the actual access modes the volume backing the PVC has. More info:
      http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes-1*/
     accessModes = null,
     /**Represents the actual resources of the underlying volume.*/
     capacity = null
}