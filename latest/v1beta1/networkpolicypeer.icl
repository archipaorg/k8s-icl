take ../v1/labelselector,
     ipblock,
     ../v1/labelselector

/***/
::orch "kubernetes" "NetworkPolicyPeer" as NetworkPolicyPeer @namespaceSelector, @ipBlock, @podSelector {
     /**Selects Namespaces using cluster scoped-labels.  This matches all pods in all namespaces
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