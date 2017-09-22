/**ServiceSpec describes the attributes that a user creates on a service.*/
::orch "kubernetes" "ServiceSpec" as ServiceSpec @loadBalancerIP, @externalIPs, @loadBalancerSourceRanges, @healthCheckNodePort, @selector, @externalName, @sessionAffinity, @clusterIP, @externalTrafficPolicy, @type, @ports {
     /**Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified
      in this field. This feature depends on whether the underlying cloud-provider supports specifying
      the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider
      does not support the feature.*/
     loadBalancerIP = null,
     /**externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic
      for this service.  These IPs are not managed by Kubernetes.  The user is responsible for
      ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers
      that are not part of the Kubernetes system.*/
     externalIPs = null,
     /**If specified and supported by the platform, this will restrict traffic through the cloud-provider
      load-balancer will be restricted to the specified client IPs. This field will be ignored
      if the cloud-provider does not support the feature." More info: https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/*/
     loadBalancerSourceRanges = null,
     /**healthCheckNodePort specifies the healthcheck nodePort for the service. If not specified,
      HealthCheckNodePort is created by the service api backend with the allocated nodePort.
      Will use user-specified nodePort value if specified by the client. Only effects when Type
      is set to LoadBalancer and ExternalTrafficPolicy is set to Local.*/
     healthCheckNodePort = null,
     /**Route service traffic to pods with label keys and values matching this selector. If empty
      or not present, the service is assumed to have an external process managing its endpoints,
      which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer.
      Ignored if type is ExternalName. More info: https://kubernetes.io/docs/concepts/services-networking/service/*/
     selector = null,
     /**externalName is the external reference that kubedns or equivalent will return as a CNAME
      record for this service. No proxying will be involved. Must be a valid DNS name and requires
      Type to be ExternalName.*/
     externalName = null,
     /**Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based
      session affinity. Must be ClientIP or None. Defaults to None. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies*/
     sessionAffinity = null,
     /**clusterIP is the IP address of the service and is usually assigned randomly by the master.
      If an address is specified manually and is not in use by others, it will be allocated to
      the service; otherwise, creation of the service will fail. This field can not be changed
      through updates. Valid values are "None", empty string (""), or a valid IP address. "None"
      can be specified for headless services when proxying is not required. Only applies to types
      ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies*/
     clusterIP = null,
     /**externalTrafficPolicy denotes if this Service desires to route external traffic to node-local
      or cluster-wide endpoints. "Local" preserves the client source IP and avoids a second hop
      for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading.
      "Cluster" obscures the client source IP and may cause a second hop to another node, but
      should have good overall load-spreading.*/
     externalTrafficPolicy = null,
     /**type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName,
      ClusterIP, NodePort, and LoadBalancer. "ExternalName" maps to the specified externalName.
      "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints
      are determined by the selector or if that is not specified, by manual construction of an
      Endpoints object. If clusterIP is "None", no virtual IP is allocated and the endpoints
      are published as a set of endpoints rather than a stable IP. "NodePort" builds on ClusterIP
      and allocates a port on every node which routes to the clusterIP. "LoadBalancer" builds
      on NodePort and creates an external load-balancer (if supported in the current cloud) which
      routes to the clusterIP. More info: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services---service-types*/
     type = null,
     /**The list of ports that are exposed by this service. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies*/
     ports = null
}