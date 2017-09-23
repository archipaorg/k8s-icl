take time,
     time

/**PersistentVolumeClaimCondition contails details about state of pvc*/
::orch "kubernetes" "PersistentVolumeClaimCondition" as PersistentVolumeClaimCondition @status, @reason, @lastProbeTime, @type, @message, @lastTransitionTime {
     /***/
     status = null,
     /**Unique, this should be a short, machine understandable string that gives the reason for
      condition's last transition. If it reports "ResizeStarted" that means the underlying persistent
      volume is being resized.*/
     reason = null,
     /***/
     type = null,
     /**Human-readable message indicating details about last transition.*/
     message = null,
     /**Last time we probed the condition.*/
     Time "lastProbeTime" {}
     /**Last time the condition transitioned from one status to another.*/
     Time "lastTransitionTime" {}
}