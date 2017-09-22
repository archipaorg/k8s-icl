take daemonendpoint

/**NodeDaemonEndpoints lists ports opened by daemons running on the Node.*/
::orch "kubernetes" "NodeDaemonEndpoints" as NodeDaemonEndpoints @kubeletEndpoint {
     /**Endpoint on which Kubelet is listening.*/
     DaemonEndpoint "kubeletEndpoint" {}
}