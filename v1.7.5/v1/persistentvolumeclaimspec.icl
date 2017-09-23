take labelselector,
     resourcerequirements

/**PersistentVolumeClaimSpec describes the common attributes of storage devices and allows
 a Source for provider-specific attributes*/
::orch "kubernetes" "PersistentVolumeClaimSpec" as PersistentVolumeClaimSpec @storageClassName, @accessModes, @selector, @resources, @volumeName {
     /**Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1*/
     storageClassName = null,
     /**AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1*/
     accessModes = null,
     /**VolumeName is the binding reference to the PersistentVolume backing this claim.*/
     volumeName = null,
     /**A label query over volumes to consider for binding.*/
     LabelSelector "selector" {}
     /**Resources represents the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources*/
     ResourceRequirements "resources" {}
}