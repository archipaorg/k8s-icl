take ../v1/time

/**ReplicaSetCondition describes the state of a replica set at a certain point.*/
::orch "kubernetes" "ReplicaSetCondition" as ReplicaSetCondition @status, @lastTransitionTime, @message, @type, @reason {
     /**Status of the condition, one of True, False, Unknown.*/
     status = null,
     /**A human readable message indicating details about the transition.*/
     message = null,
     /**Type of replica set condition.*/
     type = null,
     /**The reason for the condition's last transition.*/
     reason = null,
     /**The last time the condition transitioned from one status to another.*/
     Time "lastTransitionTime" {}
}