take persistentvolumestatus,
     persistentvolumespec,
     objectmeta

/**PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous
 to a node. More info: http://kubernetes.io/docs/user-guide/persistent-volumes*/
::orch "kubernetes" "PersistentVolume" as PersistentVolume @status, @spec, @metadata {
     /**Status represents the current information/status for the persistent volume. Populated by
      the system. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes*/
     PersistentVolumeStatus "status" {}
     /**Spec defines a specification of a persistent volume owned by the cluster. Provisioned by
      an administrator. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes*/
     PersistentVolumeSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}