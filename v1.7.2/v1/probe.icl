take httpgetaction,
     execaction,
     tcpsocketaction

/**Probe describes a health check to be performed against a container to determine whether
 it is alive or ready to receive traffic.*/
::orch "kubernetes" "Probe" as Probe @httpGet, @timeoutSeconds, @exec, @initialDelaySeconds, @tcpSocket, @periodSeconds, @successThreshold, @failureThreshold {
     /**Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is
      1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes*/
     timeoutSeconds = null,
     /**Number of seconds after the container has started before liveness probes are initiated.
      More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes*/
     initialDelaySeconds = null,
     /**How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.*/
     periodSeconds = null,
     /**Minimum consecutive successes for the probe to be considered successful after having failed.
      Defaults to 1. Must be 1 for liveness. Minimum value is 1.*/
     successThreshold = null,
     /**Minimum consecutive failures for the probe to be considered failed after having succeeded.
      Defaults to 3. Minimum value is 1.*/
     failureThreshold = null,
     /**HTTPGet specifies the http request to perform.*/
     HTTPGetAction "httpGet" {}
     /**One and only one of the following should be specified. Exec specifies the action to take.*/
     ExecAction "exec" {}
     /**TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported*/
     TCPSocketAction "tcpSocket" {}
}