take labelselector

/**Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s))
 that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where
 co-located is defined as running on a node whose value of the label with key <topologyKey>
 tches that of any node on which a pod of the set of pods is running*/
::orch "kubernetes" "PodAffinityTerm" as PodAffinityTerm @labelSelector, @namespaces, @topologyKey {
     /**namespaces specifies which namespaces the labelSelector applies to (matches against); null
      or empty list means "this pod's namespace"*/
     namespaces = null,
     /**This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods
      matching the labelSelector in the specified namespaces, where co-located is defined as
      running on a node whose value of the label with key topologyKey matches that of any node
      on which any of the selected pods is running. For PreferredDuringScheduling pod anti-affinity,
      empty topologyKey is interpreted as "all topologies" ("all topologies" here means all the
      topologyKeys indicated by scheduler command-line argument --failure-domains); for affinity
      and for RequiredDuringScheduling pod anti-affinity, empty topologyKey is not allowed.*/
     topologyKey = null,
     /**A label query over a set of resources, in this case pods.*/
     LabelSelector "labelSelector" {}
}