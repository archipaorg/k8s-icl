/**IngressBackend describes all endpoints for a given service and port.*/
::orch "kubernetes" "IngressBackend" as IngressBackend @serviceName, @servicePort {
     /**Specifies the name of the referenced service.*/
     serviceName = null
}