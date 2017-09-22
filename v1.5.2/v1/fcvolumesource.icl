/**Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write
 once. Fibre Channel volumes support ownership management and SELinux relabeling.*/
::orch "kubernetes" "FCVolumeSource" as FCVolumeSource @readOnly, @targetWWNs, @lun, @fsType {
     /**Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting
      in VolumeMounts.*/
     readOnly = null,
     /**Required: FC target worldwide names (WWNs)*/
     targetWWNs = null,
     /**Required: FC target lun number*/
     lun = null,
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null
}