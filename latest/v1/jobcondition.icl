take time,
     time

/**JobCondition describes current state of a job.*/
::orch "kubernetes" "JobCondition" as JobCondition @status, @reason, @lastProbeTime, @type, @message, @lastTransitionTime {
     /**Status of the condition, one of True, False, Unknown.*/
     status = null,
     /**(brief) reason for the condition's last transition.*/
     reason = null,
     /**Type of job condition, Complete or Failed.*/
     type = null,
     /**Human readable message indicating details about last transition.*/
     message = null,
     /**Last time the condition was checked.*/
     Time "lastProbeTime" {}
     /**Last time the condition transit from one status to another.*/
     Time "lastTransitionTime" {}
}