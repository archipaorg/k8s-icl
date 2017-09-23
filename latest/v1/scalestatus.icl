/**ScaleStatus represents the current status of a scale subresource.*/
::orch "kubernetes" "ScaleStatus" as ScaleStatus @replicas, @selector {
     /**actual number of observed instances of the scaled object.*/
     replicas = null,
     /**label query over pods that should match the replicas count. This is same as the label selector
      but in the string format to avoid introspection by clients. The string will be in the same
      format as the query-param syntax. More info about label selectors: http://kubernetes.io/docs/user-guide/labels#label-selectors*/
     selector = null
}