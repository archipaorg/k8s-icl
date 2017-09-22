take localobjectreference

/**Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support
 ownership management and SELinux relabeling.*/
::orch "kubernetes" "RBDVolumeSource" as RBDVolumeSource @secretRef, @image, @keyring, @fsType, @readOnly, @user, @monitors, @pool {
     /**The rados image name. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it*/
     image = null,
     /**Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it*/
     keyring = null,
     /**Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type
      is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly
      inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd*/
     fsType = null,
     /**ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info:
      https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it*/
     readOnly = null,
     /**The rados user name. Default is admin. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it*/
     user = null,
     /**A collection of Ceph monitors. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it*/
     monitors = null,
     /**The rados pool name. Default is rbd. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it*/
     pool = null,
     /**SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring.
      Default is nil. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it*/
     LocalObjectReference "secretRef" {}
}