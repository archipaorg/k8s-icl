/***/
::orch "kubernetes" "NetworkPolicyPort" as NetworkPolicyPort @protocol, @port {
     /**Optional.  The protocol (TCP or UDP) which traffic must match. If not specified, this field
      defaults to TCP.*/
     protocol = null
}