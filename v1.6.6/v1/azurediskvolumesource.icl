/**AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.*/
::orch "kubernetes" "AzureDiskVolumeSource" as AzureDiskVolumeSource @diskURI, @diskName, @fsType, @readOnly, @cachingMode {
     /**The URI the data disk in the blob storage*/
     diskURI = null,
     /**The Name of the data disk in the blob storage*/
     diskName = null,
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null,
     /**Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.*/
     readOnly = null,
     /**Host Caching mode: None, Read Only, Read Write.*/
     cachingMode = null
}