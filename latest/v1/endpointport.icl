/**EndpointPort is a tuple that describes a single port.*/
::orch "kubernetes" "EndpointPort" as EndpointPort @protocol, @name, @port {
     /**The IP protocol for this port. Must be UDP or TCP. Default is TCP.*/
     protocol = null,
     /**The name of this port (corresponds to ServicePort.Name). Must be a DNS_LABEL. Optional only
      if one port is defined.*/
     name = null,
     /**The port number of the endpoint.*/
     port = null
}