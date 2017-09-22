take eventsource,
     objectreference

/**Event is a report of an event somewhere in the cluster.*/
::orch "kubernetes" "Event" as Event @count, @kind, @firstTimestamp, @lastTimestamp, @apiVersion, @source, @reason, @involvedObject, @message, @type, @metadata {
     /**The number of times this event has occurred.*/
     count = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**This should be a short, machine understandable string that gives the reason for the transition
      into the object's current status.*/
     reason = null,
     /**A human-readable description of the status of this operation.*/
     message = null,
     /**Type of this event (Normal, Warning), new types could be added in the future*/
     type = null,
     /**The component reporting this event. Should be a short machine understandable string.*/
     EventSource "source" {}
     /**The object that this event is about.*/
     ObjectReference "involvedObject" {}
}