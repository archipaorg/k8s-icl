/**ResourceRequirements describes the compute resource requirements.*/
::orch "kubernetes" "ResourceRequirements" as ResourceRequirements @requests, @limits {
     /**Requests describes the minimum amount of compute resources required. If Requests is omitted
      for a container, it defaults to Limits if that is explicitly specified, otherwise to an
      implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/*/
     requests = null,
     /**Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/*/
     limits = null
}