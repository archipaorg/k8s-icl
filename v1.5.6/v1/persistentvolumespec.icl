take photonpersistentdiskvolumesource,
     azurediskvolumesource,
     glusterfsvolumesource,
     fcvolumesource,
     cindervolumesource,
     flockervolumesource,
     cephfsvolumesource,
     azurefilevolumesource,
     quobytevolumesource,
     objectreference,
     hostpathvolumesource,
     nfsvolumesource,
     gcepersistentdiskvolumesource,
     flexvolumesource,
     awselasticblockstorevolumesource,
     rbdvolumesource,
     iscsivolumesource,
     vspherevirtualdiskvolumesource

/**PersistentVolumeSpec is the specification of a persistent volume.*/
::orch "kubernetes" "PersistentVolumeSpec" as PersistentVolumeSpec @photonPersistentDisk, @persistentVolumeReclaimPolicy, @azureDisk, @accessModes, @glusterfs, @fc, @cinder, @flocker, @cephfs, @capacity, @azureFile, @quobyte, @claimRef, @hostPath, @nfs, @gcePersistentDisk, @flexVolume, @awsElasticBlockStore, @rbd, @iscsi, @vsphereVolume {
     /**What happens to a persistent volume when released from its claim. Valid options are Retain
      (default) and Recycle. Recycling must be supported by the volume plugin underlying this
      persistent volume. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#recycling-policy*/
     persistentVolumeReclaimPolicy = null,
     /**AccessModes contains all ways the volume can be mounted. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes*/
     accessModes = null,
     /**A description of the persistent volume's resources and capacity. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#capacity*/
     capacity = null,
     /**PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted
      on kubelets host machine*/
     PhotonPersistentDiskVolumeSource "photonPersistentDisk" {}
     /**AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.*/
     AzureDiskVolumeSource "azureDisk" {}
     /**Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod.
      Provisioned by an admin. More info: http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md*/
     GlusterfsVolumeSource "glusterfs" {}
     /**FC represents a Fibre Channel resource that is attached to a kubelet's host machine and
      then exposed to the pod.*/
     FCVolumeSource "fc" {}
     /**Cinder represents a cinder volume attached and mounted on kubelets host machine More info:
      http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md*/
     CinderVolumeSource "cinder" {}
     /**Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to
      the pod for its usage. This depends on the Flocker control service being running*/
     FlockerVolumeSource "flocker" {}
     /**CephFS represents a Ceph FS mount on the host that shares a pod's lifetime*/
     CephFSVolumeSource "cephfs" {}
     /**AzureFile represents an Azure File Service mount on the host and bind mount to the pod.*/
     AzureFileVolumeSource "azureFile" {}
     /**Quobyte represents a Quobyte mount on the host that shares a pod's lifetime*/
     QuobyteVolumeSource "quobyte" {}
     /**ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim.
      Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV
      and PVC. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#binding*/
     ObjectReference "claimRef" {}
     /**HostPath represents a directory on the host. Provisioned by a developer or tester. This
      is useful for single-node development and testing only! On-host storage is not supported
      in any way and WILL NOT WORK in a multi-node cluster. More info: http://kubernetes.io/docs/user-guide/volumes#hostpath*/
     HostPathVolumeSource "hostPath" {}
     /**NFS represents an NFS mount on the host. Provisioned by an admin. More info: http://kubernetes.io/docs/user-guide/volumes#nfs*/
     NFSVolumeSource "nfs" {}
     /**GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine
      and then exposed to the pod. Provisioned by an admin. More info: http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk*/
     GCEPersistentDiskVolumeSource "gcePersistentDisk" {}
     /**FlexVolume represents a generic volume resource that is provisioned/attached using an exec
      based plugin. This is an alpha feature and may change in future.*/
     FlexVolumeSource "flexVolume" {}
     /**AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
      machine and then exposed to the pod. More info: http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore*/
     AWSElasticBlockStoreVolumeSource "awsElasticBlockStore" {}
     /**RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More
      info: http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md*/
     RBDVolumeSource "rbd" {}
     /**ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and
      then exposed to the pod. Provisioned by an admin.*/
     ISCSIVolumeSource "iscsi" {}
     /**VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine*/
     VsphereVirtualDiskVolumeSource "vsphereVolume" {}
}