/**Information about the condition of a component.*/
::orch "kubernetes" "ComponentCondition" as ComponentCondition @status, @message, @type, @error {
     /**Status of the condition for a component. Valid values for "Healthy": "True", "False", or
      "Unknown".*/
     status = null,
     /**Message about the condition for a component. For example, information about a health check.*/
     message = null,
     /**Type of condition for a component. Valid value: "Healthy"*/
     type = null,
     /**Condition error code for a component. For example, a health check error code.*/
     error = null
}