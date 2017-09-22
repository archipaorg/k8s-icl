take localobjectreference

/**ScaleIOVolumeSource represents a persistent ScaleIO volume*/
::orch "kubernetes" "ScaleIOVolumeSource" as ScaleIOVolumeSource @storageMode, @secretRef, @protectionDomain, @volumeName, @sslEnabled, @system, @fsType, @readOnly, @storagePool, @gateway {
     /**Indicates whether the storage for a volume should be thick or thin (defaults to "thin").*/
     storageMode = null,
     /**The name of the Protection Domain for the configured storage (defaults to "default").*/
     protectionDomain = null,
     /**The name of a volume already created in the ScaleIO system that is associated with this
      volume source.*/
     volumeName = null,
     /**Flag to enable/disable SSL communication with Gateway, default false*/
     sslEnabled = null,
     /**The name of the storage system as configured in ScaleIO.*/
     system = null,
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.*/
     fsType = null,
     /**Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.*/
     readOnly = null,
     /**The Storage Pool associated with the protection domain (defaults to "default").*/
     storagePool = null,
     /**The host address of the ScaleIO API Gateway.*/
     gateway = null,
     /**SecretRef references to the secret for ScaleIO user and other sensitive information. If
      this is not provided, Login operation will fail.*/
     LocalObjectReference "secretRef" {}
}