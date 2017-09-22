/**NamespaceSpec describes the attributes on a Namespace.*/
::orch "kubernetes" "NamespaceSpec" as NamespaceSpec @finalizers {
     /**Finalizers is an opaque list of values that must be empty to permanently remove object from
      storage. More info: http://releases.k8s.io/HEAD/docs/design/namespaces.md#finalizers*/
     finalizers = null
}