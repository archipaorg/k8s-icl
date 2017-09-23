/**Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership
 management or SELinux relabeling.*/
::orch "kubernetes" "NFSVolumeSource" as NFSVolumeSource @path, @readOnly, @server {
     /**Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs*/
     path = null,
     /**ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults
      to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs*/
     readOnly = null,
     /**Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs*/
     server = null
}