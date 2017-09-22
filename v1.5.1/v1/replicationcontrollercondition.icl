/**ReplicationControllerCondition describes the state of a replication controller at a certain
 point.*/
::orch "kubernetes" "ReplicationControllerCondition" as ReplicationControllerCondition @status, @lastTransitionTime, @message, @type, @reason {
     /**Status of the condition, one of True, False, Unknown.*/
     status = null,
     /**A human readable message indicating details about the transition.*/
     message = null,
     /**Type of replication controller condition.*/
     type = null,
     /**The reason for the condition's last transition.*/
     reason = null
}