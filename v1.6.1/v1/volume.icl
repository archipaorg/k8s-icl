take photonpersistentdiskvolumesource,
     azurediskvolumesource,
     portworxvolumesource,
     glusterfsvolumesource,
     gitrepovolumesource,
     scaleiovolumesource,
     emptydirvolumesource,
     cindervolumesource,
     flockervolumesource,
     persistentvolumeclaimvolumesource,
     configmapvolumesource,
     cephfsvolumesource,
     iscsivolumesource,
     projectedvolumesource,
     downwardapivolumesource,
     quobytevolumesource,
     secretvolumesource,
     fcvolumesource,
     nfsvolumesource,
     gcepersistentdiskvolumesource,
     hostpathvolumesource,
     flexvolumesource,
     awselasticblockstorevolumesource,
     rbdvolumesource,
     azurefilevolumesource,
     vspherevirtualdiskvolumesource

/**Volume represents a named volume in a pod that may be accessed by any container in the pod.*/
::orch "kubernetes" "Volume" as Volume @photonPersistentDisk, @azureDisk, @portworxVolume, @glusterfs, @gitRepo, @scaleIO, @emptyDir, @cinder, @flocker, @persistentVolumeClaim, @configMap, @cephfs, @name, @iscsi, @projected, @downwardAPI, @quobyte, @secret, @fc, @nfs, @gcePersistentDisk, @hostPath, @flexVolume, @awsElasticBlockStore, @rbd, @azureFile, @vsphereVolume {
     /**Volume's name. Must be a DNS_LABEL and unique within the pod. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null,
     /**PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted
      on kubelets host machine*/
     PhotonPersistentDiskVolumeSource "photonPersistentDisk" {}
     /**AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.*/
     AzureDiskVolumeSource "azureDisk" {}
     /**PortworxVolume represents a portworx volume attached and mounted on kubelets host machine*/
     PortworxVolumeSource "portworxVolume" {}
     /**Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info:
      http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md*/
     GlusterfsVolumeSource "glusterfs" {}
     /**GitRepo represents a git repository at a particular revision.*/
     GitRepoVolumeSource "gitRepo" {}
     /**ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.*/
     ScaleIOVolumeSource "scaleIO" {}
     /**EmptyDir represents a temporary directory that shares a pod's lifetime. More info: http://kubernetes.io/docs/user-guide/volumes#emptydir*/
     EmptyDirVolumeSource "emptyDir" {}
     /**Cinder represents a cinder volume attached and mounted on kubelets host machine More info:
      http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md*/
     CinderVolumeSource "cinder" {}
     /**Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on
      the Flocker control service being running*/
     FlockerVolumeSource "flocker" {}
     /**PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the
      same namespace. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims*/
     PersistentVolumeClaimVolumeSource "persistentVolumeClaim" {}
     /**ConfigMap represents a configMap that should populate this volume*/
     ConfigMapVolumeSource "configMap" {}
     /**CephFS represents a Ceph FS mount on the host that shares a pod's lifetime*/
     CephFSVolumeSource "cephfs" {}
     /**ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and
      then exposed to the pod. More info: http://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md*/
     ISCSIVolumeSource "iscsi" {}
     /**Items for all in one resources secrets, configmaps, and downward API*/
     ProjectedVolumeSource "projected" {}
     /**DownwardAPI represents downward API about the pod that should populate this volume*/
     DownwardAPIVolumeSource "downwardAPI" {}
     /**Quobyte represents a Quobyte mount on the host that shares a pod's lifetime*/
     QuobyteVolumeSource "quobyte" {}
     /**Secret represents a secret that should populate this volume. More info: http://kubernetes.io/docs/user-guide/volumes#secrets*/
     SecretVolumeSource "secret" {}
     /**FC represents a Fibre Channel resource that is attached to a kubelet's host machine and
      then exposed to the pod.*/
     FCVolumeSource "fc" {}
     /**NFS represents an NFS mount on the host that shares a pod's lifetime More info: http://kubernetes.io/docs/user-guide/volumes#nfs*/
     NFSVolumeSource "nfs" {}
     /**GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine
      and then exposed to the pod. More info: http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk*/
     GCEPersistentDiskVolumeSource "gcePersistentDisk" {}
     /**HostPath represents a pre-existing file or directory on the host machine that is directly
      exposed to the container. This is generally used for system agents or other privileged
      things that are allowed to see the host machine. Most containers will NOT need this. More
      info: http://kubernetes.io/docs/user-guide/volumes#hostpath*/
     HostPathVolumeSource "hostPath" {}
     /**FlexVolume represents a generic volume resource that is provisioned/attached using an exec
      based plugin. This is an alpha feature and may change in future.*/
     FlexVolumeSource "flexVolume" {}
     /**AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
      machine and then exposed to the pod. More info: http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore*/
     AWSElasticBlockStoreVolumeSource "awsElasticBlockStore" {}
     /**RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More
      info: http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md*/
     RBDVolumeSource "rbd" {}
     /**AzureFile represents an Azure File Service mount on the host and bind mount to the pod.*/
     AzureFileVolumeSource "azureFile" {}
     /**VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine*/
     VsphereVirtualDiskVolumeSource "vsphereVolume" {}
}