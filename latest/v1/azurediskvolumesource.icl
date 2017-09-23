/**AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.*/
::orch "kubernetes" "AzureDiskVolumeSource" as AzureDiskVolumeSource @diskURI, @diskName, @readOnly, @cachingMode, @kind, @fsType {
     /**The URI the data disk in the blob storage*/
     diskURI = null,
     /**The Name of the data disk in the blob storage*/
     diskName = null,
     /**Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.*/
     readOnly = null,
     /**Host Caching mode: None, Read Only, Read Write.*/
     cachingMode = null,
     /**Expected values Shared: mulitple blob disks per storage account  Dedicated: single blob
      disk per storage account  Managed: azure managed data disk (only in managed availability
      set). defaults to shared*/
     kind = null,
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null
}