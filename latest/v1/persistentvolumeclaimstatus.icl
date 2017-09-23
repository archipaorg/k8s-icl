/**PersistentVolumeClaimStatus is the current status of a persistent volume claim.*/
::orch "kubernetes" "PersistentVolumeClaimStatus" as PersistentVolumeClaimStatus @phase, @accessModes, @capacity, @conditions {
     /**Phase represents the current phase of PersistentVolumeClaim.*/
     phase = null,
     /**AccessModes contains the actual access modes the volume backing the PVC has. More info:
      https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1*/
     accessModes = null,
     /**Represents the actual resources of the underlying volume.*/
     capacity = null,
     /**Current Condition of persistent volume claim. If underlying persistent volume is being resized
      then the Condition will be set to 'ResizeStarted'.*/
     conditions = null
}