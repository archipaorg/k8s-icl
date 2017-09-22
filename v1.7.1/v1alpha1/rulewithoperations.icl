/**RuleWithOperations is a tuple of Operations and Resources. It is recommended to make sure
 that all the tuple expansions are valid.*/
::orch "kubernetes" "RuleWithOperations" as RuleWithOperations @operations, @apiGroups, @apiVersions, @resources {
     /**Operations is the operations the admission hook cares about - CREATE, UPDATE, or * for all
      operations. If '*' is present, the length of the slice must be one. Required.*/
     operations = null,
     /**APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present,
      the length of the slice must be one. Required.*/
     apiGroups = null,
     /**APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is
      present, the length of the slice must be one. Required.*/
     apiVersions = null,
     /**Resources is a list of resources this rule applies to.

     For example: 'pods' means pods.
      'pods/log' means the log subresource of pods. '*' means all resources, but not subresources.
      'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*'
      means all resources and their subresources.

     If wildcard is present, the validation rule
      will ensure resources do not overlap with each other.

     Depending on the enclosing object,
      subresources might not be allowed. Required.*/
     resources = null
}