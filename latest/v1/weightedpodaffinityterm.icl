take podaffinityterm

/**The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find
 the most preferred node(s)*/
::orch "kubernetes" "WeightedPodAffinityTerm" as WeightedPodAffinityTerm @podAffinityTerm, @weight {
     /**weight associated with matching the corresponding podAffinityTerm, in the range 1-100.*/
     weight = null,
     /**Required. A pod affinity term, associated with the corresponding weight.*/
     PodAffinityTerm "podAffinityTerm" {}
}