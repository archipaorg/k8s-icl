/**Represents a vSphere volume resource.*/
::orch "kubernetes" "VsphereVirtualDiskVolumeSource" as VsphereVirtualDiskVolumeSource @volumePath, @fsType {
     /**Path that identifies vSphere volume vmdk*/
     volumePath = null,
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null
}