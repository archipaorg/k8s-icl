/**PortworxVolumeSource represents a Portworx volume resource.*/
::orch "kubernetes" "PortworxVolumeSource" as PortworxVolumeSource @readOnly, @volumeID, @fsType {
     /**Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.*/
     readOnly = null,
     /**VolumeID uniquely identifies a Portworx volume*/
     volumeID = null,
     /**FSType represents the filesystem type to mount Must be a filesystem type supported by the
      host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null
}