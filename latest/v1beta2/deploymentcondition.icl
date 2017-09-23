take ../v1/time,
     ../v1/time

/**DeploymentCondition describes the state of a deployment at a certain point.*/
::orch "kubernetes" "DeploymentCondition" as DeploymentCondition @status, @reason, @lastUpdateTime, @type, @message, @lastTransitionTime {
     /**Status of the condition, one of True, False, Unknown.*/
     status = null,
     /**The reason for the condition's last transition.*/
     reason = null,
     /**Type of deployment condition.*/
     type = null,
     /**A human readable message indicating details about the transition.*/
     message = null,
     /**The last time this condition was updated.*/
     Time "lastUpdateTime" {}
     /**Last time the condition transitioned from one status to another.*/
     Time "lastTransitionTime" {}
}