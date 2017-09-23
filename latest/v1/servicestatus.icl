take loadbalancerstatus

/**ServiceStatus represents the current status of a service.*/
::orch "kubernetes" "ServiceStatus" as ServiceStatus @loadBalancer {
     /**LoadBalancer contains the current status of the load-balancer, if one is present.*/
     LoadBalancerStatus "loadBalancer" {}
}