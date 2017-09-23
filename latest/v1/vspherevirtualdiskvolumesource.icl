/**Represents a vSphere volume resource.*/
::orch "kubernetes" "VsphereVirtualDiskVolumeSource" as VsphereVirtualDiskVolumeSource @storagePolicyName, @fsType, @storagePolicyID, @volumePath {
     /**Storage Policy Based Management (SPBM) profile name.*/
     storagePolicyName = null,
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null,
     /**Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.*/
     storagePolicyID = null,
     /**Path that identifies vSphere volume vmdk*/
     volumePath = null
}