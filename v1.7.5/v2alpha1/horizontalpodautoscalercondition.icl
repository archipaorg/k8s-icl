take ../v1/time

/**HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain
 point.*/
::orch "kubernetes" "HorizontalPodAutoscalerCondition" as HorizontalPodAutoscalerCondition @status, @lastTransitionTime, @message, @type, @reason {
     /**status is the status of the condition (True, False, Unknown)*/
     status = null,
     /**message is a human-readable explanation containing details about the transition*/
     message = null,
     /**type describes the current condition*/
     type = null,
     /**reason is the reason for the condition's last transition.*/
     reason = null,
     /**lastTransitionTime is the last time the condition transitioned from one status to another*/
     Time "lastTransitionTime" {}
}