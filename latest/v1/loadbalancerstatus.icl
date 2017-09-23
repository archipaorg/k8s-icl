/**LoadBalancerStatus represents the status of a load-balancer.*/
::orch "kubernetes" "LoadBalancerStatus" as LoadBalancerStatus @ingress {
     /**Ingress is a list containing ingress points for the load-balancer. Traffic intended for
      the service should be sent to these ingress points.*/
     ingress = null
}