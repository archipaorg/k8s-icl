take localobjectreference

/**Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes
 support ownership management and SELinux relabeling.*/
::orch "kubernetes" "ISCSIVolumeSource" as ISCSIVolumeSource @targetPortal, @portals, @secretRef, @fsType, @readOnly, @chapAuthSession, @iscsiInterface, @iqn, @chapAuthDiscovery, @lun {
     /**iSCSI target portal. The portal is either an IP or ip_addr:port if the port is other than
      default (typically TCP ports 860 and 3260).*/
     targetPortal = null,
     /**iSCSI target portal List. The portal is either an IP or ip_addr:port if the port is other
      than default (typically TCP ports 860 and 3260).*/
     portals = null,
     /**Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type
      is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly
      inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi*/
     fsType = null,
     /**ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.*/
     readOnly = null,
     /**whether support iSCSI Session CHAP authentication*/
     chapAuthSession = null,
     /**Optional: Defaults to 'default' (tcp). iSCSI interface name that uses an iSCSI transport.*/
     iscsiInterface = null,
     /**Target iSCSI Qualified Name.*/
     iqn = null,
     /**whether support iSCSI Discovery CHAP authentication*/
     chapAuthDiscovery = null,
     /**iSCSI target lun number.*/
     lun = null,
     /**CHAP secret for iSCSI target and initiator authentication*/
     LocalObjectReference "secretRef" {}
}