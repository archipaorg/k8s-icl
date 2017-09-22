/**NodeSpec describes the attributes that a node is created with.*/
::orch "kubernetes" "NodeSpec" as NodeSpec @podCIDR, @unschedulable, @providerID, @externalID {
     /**PodCIDR represents the pod IP range assigned to the node.*/
     podCIDR = null,
     /**Unschedulable controls node schedulability of new pods. By default, node is schedulable.
      More info: http://releases.k8s.io/HEAD/docs/admin/node.md#manual-node-administration"*/
     unschedulable = null,
     /**ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>*/
     providerID = null,
     /**External ID of the node assigned by some machine database (e.g. a cloud provider). Deprecated.*/
     externalID = null
}