take statusdetails,
     listmeta

/**Status is a return value for calls that don't return other objects.*/
::orch "kubernetes" "Status" as Status @status, @kind, @code, @apiVersion, @reason, @details, @message, @metadata {
     /**Status of the operation. One of: "Success" or "Failure". More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     status = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**Suggested HTTP return code for this status, 0 if not set.*/
     code = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**A machine-readable description of why this operation is in the "Failure" status. If this
      value is empty there is no information available. A Reason clarifies an HTTP status code
      but does not override it.*/
     reason = null,
     /**A human-readable description of the status of this operation.*/
     message = null,
     /**Extended data associated with the reason.  Each reason may define its own extended details.
      This field is optional and the data returned is not guaranteed to conform to any schema
      except that defined by the reason type.*/
     StatusDetails "details" {}
     /**Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     ListMeta "metadata" {}
}