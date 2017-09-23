/**ResourceRule is the list of actions the subject is allowed to perform on resources. The
 list ordering isn't significant, may contain duplicates, and possibly be incomplete.*/
::orch "kubernetes" "ResourceRule" as ResourceRule @apiGroups, @verbs, @resources, @resourceNames {
     /**APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups
      are specified, any action requested against one of the enumerated resources in any API
      group will be allowed.  "*" means all.*/
     apiGroups = null,
     /**Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update,
      delete, proxy.  "*" means all.*/
     verbs = null,
     /**Resources is a list of resources this rule applies to.  ResourceAll represents all resources.
       "*" means all.*/
     resources = null,
     /**ResourceNames is an optional white list of names that the rule applies to.  An empty set
      means that everything is allowed.  "*" means all.*/
     resourceNames = null
}