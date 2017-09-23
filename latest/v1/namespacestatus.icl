/**NamespaceStatus is information about the current status of a Namespace.*/
::orch "kubernetes" "NamespaceStatus" as NamespaceStatus @phase {
     /**Phase is the current lifecycle phase of the namespace. More info: https://git.k8s.io/community/contributors/design-proposals/namespaces.md#phases*/
     phase = null
}