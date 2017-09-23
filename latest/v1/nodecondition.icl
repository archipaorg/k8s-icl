take time,
     time

/**NodeCondition contains condition information for a node.*/
::orch "kubernetes" "NodeCondition" as NodeCondition @status, @lastHeartbeatTime, @type, @message, @lastTransitionTime, @reason {
     /**Status of the condition, one of True, False, Unknown.*/
     status = null,
     /**Type of node condition.*/
     type = null,
     /**Human readable message indicating details about last transition.*/
     message = null,
     /**(brief) reason for the condition's last transition.*/
     reason = null,
     /**Last time we got an update on a given condition.*/
     Time "lastHeartbeatTime" {}
     /**Last time the condition transit from one status to another.*/
     Time "lastTransitionTime" {}
}