/**Represents a volume that is populated with the contents of a git repository. Git repo volumes
 do not support ownership management. Git repo volumes support SELinux relabeling.*/
::orch "kubernetes" "GitRepoVolumeSource" as GitRepoVolumeSource @directory, @repository, @revision {
     /**Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume
      directory will be the git repository.  Otherwise, if specified, the volume will contain
      the git repository in the subdirectory with the given name.*/
     directory = null,
     /**Repository URL*/
     repository = null,
     /**Commit hash for the specified revision.*/
     revision = null
}