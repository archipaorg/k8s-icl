/**Subject contains a reference to the object or user identities a role binding applies to.
  This can either hold a direct API object reference, or a value for non-objects such as
 user and group names.*/
::orch "kubernetes" "Subject" as Subject @kind, @namespace, @name, @apiVersion {
     /**Kind of object being referenced. Values defined by this API group are "User", "Group", and
      "ServiceAccount". If the Authorizer does not recognized the kind value, the Authorizer
      should report an error.*/
     kind = null,
     /**Namespace of the referenced object.  If the object kind is non-namespace, such as "User"
      or "Group", and this value is not empty the Authorizer should report an error.*/
     namespace = null,
     /**Name of the object being referenced.*/
     name = null,
     /**APIVersion holds the API group and version of the referenced object.*/
     apiVersion = null
}