/**LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended
 for the service should be sent to an ingress point.*/
::orch "kubernetes" "LoadBalancerIngress" as LoadBalancerIngress @ip, @hostname {
     /**IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack
      load-balancers)*/
     ip = null,
     /**Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)*/
     hostname = null
}