/**Maps a string key to a path within a volume.*/
::orch "kubernetes" "KeyToPath" as KeyToPath @path, @mode, @key {
     /**The relative path of the file to map the key to. May not be an absolute path. May not contain
      the path element '..'. May not start with the string '..'.*/
     path = null,
     /**Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified,
      the volume defaultMode will be used. This might be in conflict with other options that
      affect the file mode, like fsGroup, and the result can be other mode bits set.*/
     mode = null,
     /**The key to project.*/
     key = null
}