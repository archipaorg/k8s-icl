/**Represents a Persistent Disk resource in Google Compute Engine.

A GCE PD must exist before
 mounting to a container. The disk must also be in the same GCE project and zone as the
 kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs
 support ownership management and SELinux relabeling.*/
::orch "kubernetes" "GCEPersistentDiskVolumeSource" as GCEPersistentDiskVolumeSource @readOnly, @partition, @pdName, @fsType {
     /**ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info:
      http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk*/
     readOnly = null,
     /**The partition in the volume that you want to mount. If omitted, the default is to mount
      by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly,
      the volume partition for /dev/sda is "0" (or you can leave the property empty). More info:
      http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk*/
     partition = null,
     /**Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk*/
     pdName = null,
     /**Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type
      is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly
      inferred to be "ext4" if unspecified. More info: http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk*/
     fsType = null
}