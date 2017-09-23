/**RoleRef contains information that points to the role being used*/
::orch "kubernetes" "RoleRef" as RoleRef @apiGroup, @kind, @name {
     /**APIGroup is the group for the resource being referenced*/
     apiGroup = null,
     /**Kind is the type of resource being referenced*/
     kind = null,
     /**Name is the name of resource being referenced*/
     name = null
}