/**Represents a host path mapped into a pod. Host path volumes do not support ownership management
 or SELinux relabeling.*/
::orch "kubernetes" "HostPathVolumeSource" as HostPathVolumeSource @path, @type {
     /**Path of the directory on the host. If the path is a symlink, it will follow the link to
      the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath*/
     path = null,
     /**Type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath*/
     type = null
}