take labelselector,
     labelselector

/**NetworkPolicyPeer describes a peer to allow traffic from. Exactly one of its fields must
 be specified.*/
::orch "kubernetes" "NetworkPolicyPeer" as NetworkPolicyPeer @namespaceSelector, @podSelector {
     /**Selects Namespaces using cluster scoped-labels. This matches all pods in all namespaces
      selected by this label selector. This field follows standard label selector semantics.
      If present but empty, this selector selects all namespaces.*/
     LabelSelector "namespaceSelector" {}
     /**This is a label selector which selects Pods in this namespace. This field follows standard
      label selector semantics. If present but empty, this selector selects all pods in this
      namespace.*/
     LabelSelector "podSelector" {}
}