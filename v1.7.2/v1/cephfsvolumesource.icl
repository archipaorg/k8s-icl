take localobjectreference

/**Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not
 support ownership management or SELinux relabeling.*/
::orch "kubernetes" "CephFSVolumeSource" as CephFSVolumeSource @secretRef, @secretFile, @user, @path, @readOnly, @monitors {
     /**Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret
      More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it*/
     secretFile = null,
     /**Optional: User is the rados user name, default is admin More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it*/
     user = null,
     /**Optional: Used as the mounted root, rather than the full Ceph tree, default is /*/
     path = null,
     /**Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting
      in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it*/
     readOnly = null,
     /**Required: Monitors is a collection of Ceph monitors More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it*/
     monitors = null,
     /**Optional: SecretRef is reference to the authentication secret for User, default is empty.
      More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it*/
     LocalObjectReference "secretRef" {}
}