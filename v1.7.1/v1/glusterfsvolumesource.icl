/**Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not
 support ownership management or SELinux relabeling.*/
::orch "kubernetes" "GlusterfsVolumeSource" as GlusterfsVolumeSource @path, @readOnly, @endpoints {
     /**Path is the Glusterfs volume path. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod*/
     path = null,
     /**ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions.
      Defaults to false. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod*/
     readOnly = null,
     /**EndpointsName is the endpoint name that details Glusterfs topology. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod*/
     endpoints = null
}