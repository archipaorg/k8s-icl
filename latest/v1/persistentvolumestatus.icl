/**PersistentVolumeStatus is the current status of a persistent volume.*/
::orch "kubernetes" "PersistentVolumeStatus" as PersistentVolumeStatus @phase, @message, @reason {
     /**Phase indicates if a volume is available, bound to a claim, or released by a claim. More
      info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase*/
     phase = null,
     /**A human-readable message indicating details about why the volume is in this state.*/
     message = null,
     /**Reason is a brief CamelCase string that describes any failure and is meant for machine parsing
      and tidy display in the CLI.*/
     reason = null
}