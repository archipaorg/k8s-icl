take nodesysteminfo,
     nodedaemonendpoints

/**NodeStatus is information about the current status of a node.*/
::orch "kubernetes" "NodeStatus" as NodeStatus @capacity, @addresses, @images, @nodeInfo, @volumesAttached, @allocatable, @volumesInUse, @daemonEndpoints, @phase, @conditions {
     /**Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity*/
     capacity = null,
     /**List of addresses reachable to the node. Queried from cloud provider, if available. More
      info: https://kubernetes.io/docs/concepts/nodes/node/#addresses*/
     addresses = null,
     /**List of container images on this node*/
     images = null,
     /**List of volumes that are attached to the node.*/
     volumesAttached = null,
     /**Allocatable represents the resources of a node that are available for scheduling. Defaults
      to Capacity.*/
     allocatable = null,
     /**List of attachable volumes in use (mounted) by the node.*/
     volumesInUse = null,
     /**NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase
      The field is never populated, and now is deprecated.*/
     phase = null,
     /**Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition*/
     conditions = null,
     /**Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info*/
     NodeSystemInfo "nodeInfo" {}
     /**Endpoints of daemons running on the Node.*/
     NodeDaemonEndpoints "daemonEndpoints" {}
}