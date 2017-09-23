/**IPBlock describes a particular CIDR (Ex. "192.168.1.1/24") that is allowed to the pods matched
 by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not
 be included within this rule.*/
::orch "kubernetes" "IPBlock" as IPBlock @cidr, @except {
     /**CIDR is a string representing the IP Block Valid examples are "192.168.1.1/24"*/
     cidr = null,
     /**Except is a slice of CIDRs that should not be included within an IP Block Valid examples
      are "192.168.1.1/24" Except values will be rejected if they are outside the CIDR range*/
     except = null
}