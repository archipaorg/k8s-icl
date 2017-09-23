take labelselector,
     ipblock,
     labelselector

/**NetworkPolicyPeer describes a peer to allow traffic from. Exactly one of its fields must
 be specified.*/
::orch "kubernetes" "NetworkPolicyPeer" as NetworkPolicyPeer @namespaceSelector, @ipBlock, @podSelector {
     /**Selects Namespaces using cluster scoped-labels. This matches all pods in all namespaces
      selected by this label selector. This field follows standard label selector semantics.
      If present but empty, this selector selects all namespaces.*/
     LabelSelector "namespaceSelector" {}
     /**IPBlock defines policy on a particular IPBlock*/
     IPBlock "ipBlock" {}
     /**This is a label selector which selects Pods in this namespace. This field follows standard
      label selector semantics. If present but empty, this selector selects all pods in this
      namespace.*/
     LabelSelector "podSelector" {}
}