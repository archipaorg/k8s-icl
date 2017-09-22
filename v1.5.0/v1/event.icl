take eventsource,
     objectreference,
     objectmeta

/**Event is a report of an event somewhere in the cluster.*/
::orch "kubernetes" "Event" as Event @count, @firstTimestamp, @lastTimestamp, @source, @reason, @involvedObject, @message, @type, @metadata {
     /**The number of times this event has occurred.*/
     count = null,
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
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}