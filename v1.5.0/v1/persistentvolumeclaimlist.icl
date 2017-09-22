/**PersistentVolumeClaimList is a list of PersistentVolumeClaim items.*/
::orch "kubernetes" "PersistentVolumeClaimList" as PersistentVolumeClaimList @items, @metadata {
     /**A list of persistent volume claims. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims*/
     items = null
}