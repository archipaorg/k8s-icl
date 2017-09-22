/**Volume represents a named volume in a pod that may be accessed by any container in the pod.*/
::orch "kubernetes" "Volume" as Volume @name {
     /**Volume's name. Must be a DNS_LABEL and unique within the pod. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null
}