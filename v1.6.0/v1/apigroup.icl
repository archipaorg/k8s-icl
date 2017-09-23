take groupversionfordiscovery

/**APIGroup contains the name, the supported versions, and the preferred version of a group.*/
::orch "kubernetes" "APIGroup" as APIGroup @serverAddressByClientCIDRs, @kind, @name, @versions, @preferredVersion, @apiVersion {
     /**a map of client CIDR to server address that is serving this group. This is to help clients
      reach servers in the most network-efficient way possible. Clients can use the appropriate
      server address as per the CIDR that they match. In case of multiple matches, clients should
      use the longest matching CIDR. The server returns only those CIDRs that it thinks that
      the client can match. For example: the master will return an internal IP CIDR only, if
      the client reaches the server using an internal IP. Server looks at X-Forwarded-For header
      or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.*/
     serverAddressByClientCIDRs = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**name is the name of the group.*/
     name = null,
     /**versions are the versions supported in this group.*/
     versions = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**preferredVersion is the version preferred by the API server, which probably is the storage
      version.*/
     GroupVersionForDiscovery "preferredVersion" {}
}