/**EventSource contains information for an event.*/
::orch "kubernetes" "EventSource" as EventSource @host, @component {
     /**Node name on which the event is generated.*/
     host = null,
     /**Component from which the event is generated.*/
     component = null
}