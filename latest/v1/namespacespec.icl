/**NamespaceSpec describes the attributes on a Namespace.*/
::orch "kubernetes" "NamespaceSpec" as NamespaceSpec @finalizers {
     /**Finalizers is an opaque list of values that must be empty to permanently remove object from
      storage. More info: https://git.k8s.io/community/contributors/design-proposals/namespaces.md#finalizers*/
     finalizers = null
}