/**CrossVersionObjectReference contains enough information to let you identify the referred
 resource.*/
::orch "kubernetes" "CrossVersionObjectReference" as CrossVersionObjectReference @kind, @name, @apiVersion {
     /**Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds"*/
     kind = null,
     /**Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null,
     /**API version of the referent*/
     apiVersion = null
}