/**SubresourceReference contains enough information to let you inspect or modify the referred
 subresource.*/
::orch "kubernetes" "SubresourceReference" as SubresourceReference @kind, @name, @apiVersion, @subresource {
     /**Kind of the referent; More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null,
     /**API version of the referent*/
     apiVersion = null,
     /**Subresource name of the referent*/
     subresource = null
}