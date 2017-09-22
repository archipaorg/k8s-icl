/**HTTPGetAction describes an action based on HTTP Get requests.*/
::orch "kubernetes" "HTTPGetAction" as HTTPGetAction @path, @host, @scheme, @httpHeaders, @port {
     /**Path to access on the HTTP server.*/
     path = null,
     /**Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders
      instead.*/
     host = null,
     /**Scheme to use for connecting to the host. Defaults to HTTP.*/
     scheme = null,
     /**Custom headers to set in the request. HTTP allows repeated headers.*/
     httpHeaders = null
}