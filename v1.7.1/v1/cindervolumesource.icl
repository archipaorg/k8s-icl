/**Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting
 to a container. The volume must also be in the same region as the kubelet. Cinder volumes
 support ownership management and SELinux relabeling.*/
::orch "kubernetes" "CinderVolumeSource" as CinderVolumeSource @readOnly, @volumeID, @fsType {
     /**Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting
      in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md*/
     readOnly = null,
     /**volume id used to identify the volume in cinder More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md*/
     volumeID = null,
     /**Filesystem type to mount. Must be a filesystem type supported by the host operating system.
      Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More
      info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md*/
     fsType = null
}