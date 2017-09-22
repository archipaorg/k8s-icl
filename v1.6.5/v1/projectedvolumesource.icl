/**Represents a projected volume source*/
::orch "kubernetes" "ProjectedVolumeSource" as ProjectedVolumeSource @sources, @defaultMode {
     /**list of volume projections*/
     sources = null,
     /**Mode bits to use on created files by default. Must be a value between 0 and 0777. Directories
      within the path are not affected by this setting. This might be in conflict with other
      options that affect the file mode, like fsGroup, and the result can be other mode bits
      set.*/
     defaultMode = null
}