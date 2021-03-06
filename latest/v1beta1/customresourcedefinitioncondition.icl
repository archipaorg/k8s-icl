take ../v1/time

/**CustomResourceDefinitionCondition contains details for the current condition of this pod.*/
::orch "kubernetes" "CustomResourceDefinitionCondition" as CustomResourceDefinitionCondition @status, @lastTransitionTime, @message, @type, @reason {
     /**Status is the status of the condition. Can be True, False, Unknown.*/
     status = null,
     /**Human-readable message indicating details about last transition.*/
     message = null,
     /**Type is the type of the condition.*/
     type = null,
     /**Unique, one-word, CamelCase reason for the condition's last transition.*/
     reason = null,
     /**Last time the condition transitioned from one status to another.*/
     Time "lastTransitionTime" {}
}