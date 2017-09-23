/**Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write
 once. Fibre Channel volumes support ownership management and SELinux relabeling.*/
::orch "kubernetes" "FCVolumeSource" as FCVolumeSource @targetWWNs, @readOnly, @wwids, @lun, @fsType {
     /**Optional: FC target worldwide names (WWNs)*/
     targetWWNs = null,
     /**Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting
      in VolumeMounts.*/
     readOnly = null,
     /**Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs
      and lun must be set, but not both simultaneously.*/
     wwids = null,
     /**Optional: FC target lun number*/
     lun = null,
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null
}