take photonpersistentdiskvolumesource,
     azurediskvolumesource,
     fcvolumesource,
     portworxvolumesource,
     glusterfsvolumesource,
     scaleiovolumesource,
     cindervolumesource,
     flockervolumesource,
     quobytevolumesource,
     cephfspersistentvolumesource,
     iscsivolumesource,
     storageospersistentvolumesource,
     objectreference,
     nfsvolumesource,
     gcepersistentdiskvolumesource,
     hostpathvolumesource,
     flexvolumesource,
     awselasticblockstorevolumesource,
     rbdvolumesource,
     localvolumesource,
     azurefilepersistentvolumesource,
     vspherevirtualdiskvolumesource

/**PersistentVolumeSpec is the specification of a persistent volume.*/
::orch "kubernetes" "PersistentVolumeSpec" as PersistentVolumeSpec @photonPersistentDisk, @persistentVolumeReclaimPolicy, @azureDisk, @fc, @portworxVolume, @glusterfs, @mountOptions, @scaleIO, @cinder, @flocker, @storageClassName, @quobyte, @cephfs, @capacity, @accessModes, @iscsi, @storageos, @claimRef, @nfs, @gcePersistentDisk, @hostPath, @flexVolume, @awsElasticBlockStore, @rbd, @local, @azureFile, @vsphereVolume {
     /**What happens to a persistent volume when released from its claim. Valid options are Retain
      (default) and Recycle. Recycling must be supported by the volume plugin underlying this
      persistent volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming*/
     persistentVolumeReclaimPolicy = null,
     /**A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if
      one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options*/
     mountOptions = null,
     /**Name of StorageClass to which this persistent volume belongs. Empty value means that this
      volume does not belong to any StorageClass.*/
     storageClassName = null,
     /**A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity*/
     capacity = null,
     /**AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes*/
     accessModes = null,
     /**PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted
      on kubelets host machine*/
     PhotonPersistentDiskVolumeSource "photonPersistentDisk" {}
     /**AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.*/
     AzureDiskVolumeSource "azureDisk" {}
     /**FC represents a Fibre Channel resource that is attached to a kubelet's host machine and
      then exposed to the pod.*/
     FCVolumeSource "fc" {}
     /**PortworxVolume represents a portworx volume attached and mounted on kubelets host machine*/
     PortworxVolumeSource "portworxVolume" {}
     /**Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod.
      Provisioned by an admin. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md*/
     GlusterfsVolumeSource "glusterfs" {}
     /**ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.*/
     ScaleIOVolumeSource "scaleIO" {}
     /**Cinder represents a cinder volume attached and mounted on kubelets host machine More info:
      https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md*/
     CinderVolumeSource "cinder" {}
     /**Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to
      the pod for its usage. This depends on the Flocker control service being running*/
     FlockerVolumeSource "flocker" {}
     /**Quobyte represents a Quobyte mount on the host that shares a pod's lifetime*/
     QuobyteVolumeSource "quobyte" {}
     /**CephFS represents a Ceph FS mount on the host that shares a pod's lifetime*/
     CephFSPersistentVolumeSource "cephfs" {}
     /**ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and
      then exposed to the pod. Provisioned by an admin.*/
     ISCSIVolumeSource "iscsi" {}
     /**StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and
      mounted into the pod More info: https://releases.k8s.io/HEAD/examples/volumes/storageos/README.md*/
     StorageOSPersistentVolumeSource "storageos" {}
     /**ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim.
      Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV
      and PVC. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding*/
     ObjectReference "claimRef" {}
     /**NFS represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs*/
     NFSVolumeSource "nfs" {}
     /**GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine
      and then exposed to the pod. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk*/
     GCEPersistentDiskVolumeSource "gcePersistentDisk" {}
     /**HostPath represents a directory on the host. Provisioned by a developer or tester. This
      is useful for single-node development and testing only! On-host storage is not supported
      in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath*/
     HostPathVolumeSource "hostPath" {}
     /**FlexVolume represents a generic volume resource that is provisioned/attached using an exec
      based plugin. This is an alpha feature and may change in future.*/
     FlexVolumeSource "flexVolume" {}
     /**AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
      machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore*/
     AWSElasticBlockStoreVolumeSource "awsElasticBlockStore" {}
     /**RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More
      info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md*/
     RBDVolumeSource "rbd" {}
     /**Local represents directly-attached storage with node affinity*/
     LocalVolumeSource "local" {}
     /**AzureFile represents an Azure File Service mount on the host and bind mount to the pod.*/
     AzureFilePersistentVolumeSource "azureFile" {}
     /**VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine*/
     VsphereVirtualDiskVolumeSource "vsphereVolume" {}
}