/**ContainerPort represents a network port in a single container.*/
::orch "kubernetes" "ContainerPort" as ContainerPort @hostIP, @protocol, @containerPort, @name, @hostPort {
     /**What host IP to bind the external port to.*/
     hostIP = null,
     /**Protocol for port. Must be UDP or TCP. Defaults to "TCP".*/
     protocol = null,
     /**Number of port to expose on the pod's IP address. This must be a valid port number, 0 <
      x < 65536.*/
     containerPort = null,
     /**If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in
      a pod must have a unique name. Name for the port that can be referred to by services.*/
     name = null,
     /**Number of port to expose on the host. If specified, this must be a valid port number, 0
      < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers
      do not need this.*/
     hostPort = null
}