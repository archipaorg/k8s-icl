/**TCPSocketAction describes an action based on opening a socket*/
::orch "kubernetes" "TCPSocketAction" as TCPSocketAction @host, @port {
     /**Optional: Host name to connect to, defaults to the pod IP.*/
     host = null
}