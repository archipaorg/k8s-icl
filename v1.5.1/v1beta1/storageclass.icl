take ../v1/objectmeta

/**StorageClass describes the parameters for a class of storage for which PersistentVolumes
 can be dynamically provisioned.

StorageClasses are non-namespaced; the name of the storage
 class according to etcd is in ObjectMeta.Name.*/
::orch "kubernetes" "StorageClass" as StorageClass @metadata, @parameters, @provisioner {
     /**Parameters holds the parameters for the provisioner that should create volumes of this storage
      class.*/
     parameters = null,
     /**Provisioner indicates the type of the provisioner.*/
     provisioner = null,
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}