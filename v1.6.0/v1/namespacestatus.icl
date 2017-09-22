/**NamespaceStatus is information about the current status of a Namespace.*/
::orch "kubernetes" "NamespaceStatus" as NamespaceStatus @phase {
     /**Phase is the current lifecycle phase of the namespace. More info: http://releases.k8s.io/HEAD/docs/design/namespaces.md#phases*/
     phase = null
}