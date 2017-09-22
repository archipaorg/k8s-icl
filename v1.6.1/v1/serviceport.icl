/**ServicePort contains information on service's port.*/
::orch "kubernetes" "ServicePort" as ServicePort @protocol, @targetPort, @port, @nodePort, @name {
     /**The IP protocol for this port. Supports "TCP" and "UDP". Default is TCP.*/
     protocol = null,
     /**The port that will be exposed by this service.*/
     port = null,
     /**The port on each node on which this service is exposed when type=NodePort or LoadBalancer.
      Usually assigned by the system. If specified, it will be allocated to the service if unused
      or else creation of the service will fail. Default is to auto-allocate a port if the ServiceType
      of this Service requires one. More info: http://kubernetes.io/docs/user-guide/services#type--nodeport*/
     nodePort = null,
     /**The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec
      must have unique names. This maps to the 'Name' field in EndpointPort objects. Optional
      if only one ServicePort is defined on this service.*/
     name = null
}