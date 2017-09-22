take resourcerequirements

/**PersistentVolumeClaimSpec describes the common attributes of storage devices and allows
 a Source for provider-specific attributes*/
::orch "kubernetes" "PersistentVolumeClaimSpec" as PersistentVolumeClaimSpec @storageClassName, @accessModes, @selector, @resources, @volumeName {
     /**Name of the StorageClass required by the claim. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#class-1*/
     storageClassName = null,
     /**AccessModes contains the desired access modes the volume should have. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes-1*/
     accessModes = null,
     /**VolumeName is the binding reference to the PersistentVolume backing this claim.*/
     volumeName = null,
     /**Resources represents the minimum resources the volume should have. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#resources*/
     ResourceRequirements "resources" {}
}