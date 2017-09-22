/**PodCondition contains details for the current condition of this pod.*/
::orch "kubernetes" "PodCondition" as PodCondition @status, @reason, @lastProbeTime, @type, @message, @lastTransitionTime {
     /**Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions*/
     status = null,
     /**Unique, one-word, CamelCase reason for the condition's last transition.*/
     reason = null,
     /**Type is the type of the condition. Currently only Ready. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions*/
     type = null,
     /**Human-readable message indicating details about last transition.*/
     message = null
}