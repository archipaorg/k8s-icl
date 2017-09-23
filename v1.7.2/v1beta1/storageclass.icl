take ../v1/objectmeta

/**StorageClass describes the parameters for a class of storage for which PersistentVolumes
 can be dynamically provisioned.

StorageClasses are non-namespaced; the name of the storage
 class according to etcd is in ObjectMeta.Name.*/
::orch "kubernetes" "StorageClass" as StorageClass @kind, @metadata, @apiVersion, @parameters, @provisioner {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "StorageClass",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Parameters holds the parameters for the provisioner that should create volumes of this storage
      class.*/
     parameters = null,
     /**Provisioner indicates the type of the provisioner.*/
     provisioner = null,
     /**Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}