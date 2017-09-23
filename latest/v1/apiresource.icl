/**APIResource specifies the name of a resource and whether it is namespaced.*/
::orch "kubernetes" "APIResource" as APIResource @shortNames, @namespaced, @kind, @group, @name, @version, @singularName, @categories, @verbs {
     /**shortNames is a list of suggested short names of the resource.*/
     shortNames = null,
     /**namespaced indicates if a resource is namespaced or not.*/
     namespaced = null,
     /**kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')*/
     kind = null,
     /**group is the preferred group of the resource.  Empty implies the group of the containing
      resource list. For subresources, this may have a different value, for example: Scale".*/
     group = null,
     /**name is the plural name of the resource.*/
     name = null,
     /**version is the preferred version of the resource.  Empty implies the version of the containing
      resource list For subresources, this may have a different value, for example: v1 (while
      inside a v1beta1 version of the core resource's group)".*/
     version = null,
     /**singularName is the singular name of the resource.  This allows clients to handle plural
      and singular opaquely. The singularName is more correct for reporting status on a single
      item and both singular and plural are allowed from the kubectl CLI interface.*/
     singularName = null,
     /**categories is a list of the grouped resources this resource belongs to (e.g. 'all')*/
     categories = null,
     /**verbs is a list of supported kube verbs (this includes get, list, watch, create, update,
      patch, delete, deletecollection, and proxy)*/
     verbs = null
}