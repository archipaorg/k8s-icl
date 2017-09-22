/**Local represents directly-attached storage with node affinity*/
::orch "kubernetes" "LocalVolumeSource" as LocalVolumeSource @path {
     /**The full path to the volume on the node For alpha, this path must be a directory Once block
      as a source is supported, then this path can point to a block device*/
     path = null
}