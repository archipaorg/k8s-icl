take localobjectreference

/**FlexVolume represents a generic volume resource that is provisioned/attached using an exec
 based plugin. This is an alpha feature and may change in future.*/
::orch "kubernetes" "FlexVolumeSource" as FlexVolumeSource @secretRef, @fsType, @driver, @readOnly, @options {
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.*/
     fsType = null,
     /**Driver is the name of the driver to use for this volume.*/
     driver = null,
     /**Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting
      in VolumeMounts.*/
     readOnly = null,
     /**Optional: Extra command options if any.*/
     options = null,
     /**Optional: SecretRef is reference to the secret object containing sensitive information to
      pass to the plugin scripts. This may be empty if no secret object is specified. If the
      secret object contains more than one secret, all secrets are passed to the plugin scripts.*/
     LocalObjectReference "secretRef" {}
}