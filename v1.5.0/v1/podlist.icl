/**PodList is a list of Pods.*/
::orch "kubernetes" "PodList" as PodList @items, @metadata {
     /**List of pods. More info: http://kubernetes.io/docs/user-guide/pods*/
     items = null
}