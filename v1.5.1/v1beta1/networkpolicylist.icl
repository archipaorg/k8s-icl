/**Network Policy List is a list of NetworkPolicy objects.*/
::orch "kubernetes" "NetworkPolicyList" as NetworkPolicyList @items, @metadata {
     /**Items is a list of schema objects.*/
     items = null
}