take nodeconfigsource

/**NodeSpec describes the attributes that a node is created with.*/
::orch "kubernetes" "NodeSpec" as NodeSpec @unschedulable, @podCIDR, @providerID, @externalID, @configSource, @taints {
     /**Unschedulable controls node schedulability of new pods. By default, node is schedulable.
      More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration*/
     unschedulable = null,
     /**PodCIDR represents the pod IP range assigned to the node.*/
     podCIDR = null,
     /**ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>*/
     providerID = null,
     /**External ID of the node assigned by some machine database (e.g. a cloud provider). Deprecated.*/
     externalID = null,
     /**If specified, the node's taints.*/
     taints = null,
     /**If specified, the source to get node configuration from The DynamicKubeletConfig feature
      gate must be enabled for the Kubelet to use this field*/
     NodeConfigSource "configSource" {}
}