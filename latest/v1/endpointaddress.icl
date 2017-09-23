take objectreference

/**EndpointAddress is a tuple that describes single IP address.*/
::orch "kubernetes" "EndpointAddress" as EndpointAddress @ip, @hostname, @nodeName, @targetRef {
     /**The IP of this endpoint. May not be loopback (127.0.0.0/8), link-local (169.254.0.0/16),
      or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported
      on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.*/
     ip = null,
     /**The Hostname of this endpoint*/
     hostname = null,
     /**Optional: Node hosting this endpoint. This can be used to determine endpoints local to a
      node.*/
     nodeName = null,
     /**Reference to object providing the endpoint.*/
     ObjectReference "targetRef" {}
}