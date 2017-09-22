/**Represents a Photon Controller persistent disk resource.*/
::orch "kubernetes" "PhotonPersistentDiskVolumeSource" as PhotonPersistentDiskVolumeSource @fsType, @pdID {
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null,
     /**ID that identifies Photon Controller persistent disk*/
     pdID = null
}