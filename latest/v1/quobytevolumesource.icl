/**Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support
 ownership management or SELinux relabeling.*/
::orch "kubernetes" "QuobyteVolumeSource" as QuobyteVolumeSource @volume, @readOnly, @group, @registry, @user {
     /**Volume is a string that references an already created Quobyte volume by name.*/
     volume = null,
     /**ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults
      to false.*/
     readOnly = null,
     /**Group to map volume access to Default is no group*/
     group = null,
     /**Registry represents a single or multiple Quobyte Registry services specified as a string
      as host:port pair (multiple entries are separated with commas) which acts as the central
      registry for volumes*/
     registry = null,
     /**User to map volume access to Defaults to serivceaccount user*/
     user = null
}