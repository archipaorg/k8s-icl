take podaffinity,
     nodeaffinity,
     podantiaffinity

/**Affinity is a group of affinity scheduling rules.*/
::orch "kubernetes" "Affinity" as Affinity @podAffinity, @nodeAffinity, @podAntiAffinity {
     /**Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone,
      etc. as some other pod(s)).*/
     PodAffinity "podAffinity" {}
     /**Describes node affinity scheduling rules for the pod.*/
     NodeAffinity "nodeAffinity" {}
     /**Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node,
      zone, etc. as some other pod(s)).*/
     PodAntiAffinity "podAntiAffinity" {}
}