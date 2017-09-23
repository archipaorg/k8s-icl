/**OwnerReference contains enough information to let you identify an owning object. Currently,
 an owning object must be in the same namespace, so there is no namespace field.*/
::orch "kubernetes" "OwnerReference" as OwnerReference @kind, @blockOwnerDeletion, @uid, @controller, @apiVersion, @name {
     /**Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot
      be deleted from the key-value store until this reference is removed. Defaults to false.
      To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable
      Entity) will be returned.*/
     blockOwnerDeletion = null,
     /**UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids*/
     uid = null,
     /**If true, this reference points to the managing controller.*/
     controller = null,
     /**API version of the referent.*/
     apiVersion = null,
     /**Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null
}