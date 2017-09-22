/**VolumeMount describes a mounting of a Volume within a container.*/
::orch "kubernetes" "VolumeMount" as VolumeMount @readOnly, @mountPath, @subPath, @name {
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