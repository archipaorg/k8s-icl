/**Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes
 support ownership management and SELinux relabeling.*/
::orch "kubernetes" "ISCSIVolumeSource" as ISCSIVolumeSource @targetPortal, @readOnly, @iqn, @iscsiInterface, @lun, @fsType {
     /**iSCSI target portal. The portal is either an IP or ip_addr:port if the port is other than
      default (typically TCP ports 860 and 3260).*/
     targetPortal = null,
     /**ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.*/
     readOnly = null,
     /**Target iSCSI Qualified Name.*/
     iqn = null,
     /**Optional: Defaults to 'default' (tcp). iSCSI interface name that uses an iSCSI transport.*/
     iscsiInterface = null,
     /**iSCSI target lun number.*/
     lun = null,
     /**Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type
      is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly
      inferred to be "ext4" if unspecified. More info: http://kubernetes.io/docs/user-guide/volumes#iscsi*/
     fsType = null
}