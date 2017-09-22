take httpgetaction,
     tcpsocketaction,
     execaction

/**Handler defines a specific action that should be taken*/
::orch "kubernetes" "Handler" as Handler @httpGet, @tcpSocket, @exec {
     /**HTTPGet specifies the http request to perform.*/
     HTTPGetAction "httpGet" {}
     /**TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported*/
     TCPSocketAction "tcpSocket" {}
     /**One and only one of the following should be specified. Exec specifies the action to take.*/
     ExecAction "exec" {}
}