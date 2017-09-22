/**OwnerReference contains enough information to let you identify an owning object. Currently,
 an owning object must be in the same namespace, so there is no namespace field.*/
::orch "kubernetes" "OwnerReference" as OwnerReference @apiVersion, @controller, @uid, @kind, @name {
     /**API version of the referent.*/
     apiVersion = null,
     /**If true, this reference points to the managing controller.*/
     controller = null,
     /**UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids*/
     uid = null,
     /**Kind of the referent. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null
}