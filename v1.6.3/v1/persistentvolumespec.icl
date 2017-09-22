take photonpersistentdiskvolumesource,
     azurediskvolumesource,
     portworxvolumesource,
     glusterfsvolumesource,
     objectreference,
     flexvolumesource,
     cindervolumesource,
     flockervolumesource,
     rbdvolumesource,
     iscsivolumesource,
     quobytevolumesource,
     fcvolumesource,
     nfsvolumesource,
     gcepersistentdiskvolumesource,
     hostpathvolumesource,
     scaleiovolumesource,
     awselasticblockstorevolumesource,
     cephfsvolumesource,
     azurefilevolumesource,
     vspherevirtualdiskvolumesource

/**PersistentVolumeSpec is the specification of a persistent volume.*/
::orch "kubernetes" "PersistentVolumeSpec" as PersistentVolumeSpec @photonPersistentDisk, @persistentVolumeReclaimPolicy, @azureDisk, @portworxVolume, @glusterfs, @claimRef, @flexVolume, @cinder, @flocker, @storageClassName, @rbd, @capacity, @accessModes, @iscsi, @quobyte, @fc, @nfs, @gcePersistentDisk, @hostPath, @scaleIO, @awsElasticBlockStore, @cephfs, @azureFile, @vsphereVolume {
     /**What happens to a persistent volume when released from its claim. Valid options are Retain
      (default) and Recycle. Recycling must be supported by the volume plugin underlying this
      persistent volume. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#recycling-policy*/
     persistentVolumeReclaimPolicy = null,
     /**Name of StorageClass to which this persistent volume belongs. Empty value means that this
      volume does not belong to any StorageClass.*/
     storageClassName = null,
     /**A description of the persistent volume's resources and capacity. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#capacity*/
     capacity = null,
     /**AccessModes contains all ways the volume can be mounted. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes*/
     accessModes = null,
     /**PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted
      on kubelets host machine*/
     PhotonPersistentDiskVolumeSource "photonPersistentDisk" {}
     /**AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.*/
     AzureDiskVolumeSource "azureDisk" {}
     /**PortworxVolume represents a portworx volume attached and mounted on kubelets host machine*/
     PortworxVolumeSource "portworxVolume" {}
     /**Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod.
      Provisioned by an admin. More info: http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md*/
     GlusterfsVolumeSource "glusterfs" {}
     /**ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim.
      Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV
      and PVC. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#binding*/
     ObjectReference "claimRef" {}
     /**FlexVolume represents a generic volume resource that is provisioned/attached using an exec
      based plugin. This is an alpha feature and may change in future.*/
     FlexVolumeSource "flexVolume" {}
     /**Cinder represents a cinder volume attached and mounted on kubelets host machine More info:
      http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md*/
     CinderVolumeSource "cinder" {}
     /**Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to
      the pod for its usage. This depends on the Flocker control service being running*/
     FlockerVolumeSource "flocker" {}
     /**RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More
      info: http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md*/
     RBDVolumeSource "rbd" {}
     /**ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and
      then exposed to the pod. Provisioned by an admin.*/
     ISCSIVolumeSource "iscsi" {}
     /**Quobyte represents a Quobyte mount on the host that shares a pod's lifetime*/
     QuobyteVolumeSource "quobyte" {}
     /**FC represents a Fibre Channel resource that is attached to a kubelet's host machine and
      then exposed to the pod.*/
     FCVolumeSource "fc" {}
     /**NFS represents an NFS mount on the host. Provisioned by an admin. More info: http://kubernetes.io/docs/user-guide/volumes#nfs*/
     NFSVolumeSource "nfs" {}
     /**GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine
      and then exposed to the pod. Provisioned by an admin. More info: http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk*/
     GCEPersistentDiskVolumeSource "gcePersistentDisk" {}
     /**HostPath represents a directory on the host. Provisioned by a developer or tester. This
      is useful for single-node development and testing only! On-host storage is not supported
      in any way and WILL NOT WORK in a multi-node cluster. More info: http://kubernetes.io/docs/user-guide/volumes#hostpath*/
     HostPathVolumeSource "hostPath" {}
     /**ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.*/
     ScaleIOVolumeSource "scaleIO" {}
     /**AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
      machine and then exposed to the pod. More info: http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore*/
     AWSElasticBlockStoreVolumeSource "awsElasticBlockStore" {}
     /**CephFS represents a Ceph FS mount on the host that shares a pod's lifetime*/
     CephFSVolumeSource "cephfs" {}
     /**AzureFile represents an Azure File Service mount on the host and bind mount to the pod.*/
     AzureFileVolumeSource "azureFile" {}
     /**VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine*/
     VsphereVirtualDiskVolumeSource "vsphereVolume" {}
}