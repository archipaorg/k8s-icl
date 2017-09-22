/**Represents a host path mapped into a pod. Host path volumes do not support ownership management
 or SELinux relabeling.*/
::orch "kubernetes" "HostPathVolumeSource" as HostPathVolumeSource @path {
     /**Path of the directory on the host. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath*/
     path = null
}