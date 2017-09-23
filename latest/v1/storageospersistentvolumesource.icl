take objectreference

/**Represents a StorageOS persistent volume resource.*/
::orch "kubernetes" "StorageOSPersistentVolumeSource" as StorageOSPersistentVolumeSource @volumeName, @readOnly, @volumeNamespace, @secretRef, @fsType {
     /**VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique
      within a namespace.*/
     volumeName = null,
     /**Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.*/
     readOnly = null,
     /**VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is
      specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping
      to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to
      override the default behaviour. Set to "default" if you are not using namespaces within
      StorageOS. Namespaces that do not pre-exist within StorageOS will be created.*/
     volumeNamespace = null,
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null,
     /**SecretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not
      specified, default values will be attempted.*/
     ObjectReference "secretRef" {}
}