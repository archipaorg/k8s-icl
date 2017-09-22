/**PodCondition contains details for the current condition of this pod.*/
::orch "kubernetes" "PodCondition" as PodCondition @status, @reason, @lastProbeTime, @type, @message, @lastTransitionTime {
     /**Status is the status of the condition. Can be True, False, Unknown. More info: http://kubernetes.io/docs/user-guide/pod-states#pod-conditions*/
     status = null,
     /**Unique, one-word, CamelCase reason for the condition's last transition.*/
     reason = null,
     /**Type is the type of the condition. Currently only Ready. More info: http://kubernetes.io/docs/user-guide/pod-states#pod-conditions*/
     type = null,
     /**Human-readable message indicating details about last transition.*/
     message = null
}