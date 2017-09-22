/**PersistentVolumeList is a list of PersistentVolume items.*/
::orch "kubernetes" "PersistentVolumeList" as PersistentVolumeList @items, @metadata {
     /**List of persistent volumes. More info: http://kubernetes.io/docs/user-guide/persistent-volumes*/
     items = null
}