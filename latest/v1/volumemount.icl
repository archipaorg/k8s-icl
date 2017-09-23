/**VolumeMount describes a mounting of a Volume within a container.*/
::orch "kubernetes" "VolumeMount" as VolumeMount @mountPropagation, @readOnly, @mountPath, @subPath, @name {
     /**mountPropagation determines how mounts are propagated from the host to container and the
      other way around. When not set, MountPropagationHostToContainer is used. This field is
      alpha in 1.8 and can be reworked or removed in a future release.*/
     mountPropagation = null,
     /**Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.*/
     readOnly = null,
     /**Path within the container at which the volume should be mounted.  Must not contain ':'.*/
     mountPath = null,
     /**Path within the volume from which the container's volume should be mounted. Defaults to
      "" (volume's root).*/
     subPath = null,
     /**This must match the Name of a Volume.*/
     name = null
}