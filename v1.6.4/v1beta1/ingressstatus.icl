take ../v1/loadbalancerstatus

/**IngressStatus describe the current state of the Ingress.*/
::orch "kubernetes" "IngressStatus" as IngressStatus @loadBalancer {
     /**LoadBalancer contains the current status of the load-balancer.*/
     LoadBalancerStatus "loadBalancer" {}
}