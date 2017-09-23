take objectmeta

/**StorageClass describes the parameters for a class of storage for which PersistentVolumes
 can be dynamically provisioned.

StorageClasses are non-namespaced; the name of the storage
 class according to etcd is in ObjectMeta.Name.*/
::orch "kubernetes" "StorageClass" as StorageClass @kind, @parameters, @apiVersion, @reclaimPolicy, @mountOptions, @provisioner, @allowVolumeExpansion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "StorageClass",
     /**Parameters holds the parameters for the provisioner that should create volumes of this storage
      class.*/
     parameters = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1",
     /**Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy.
      Defaults to Delete.*/
     reclaimPolicy = null,
     /**Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions,
      e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.*/
     mountOptions = null,
     /**Provisioner indicates the type of the provisioner.*/
     provisioner = null,
     /**AllowVolumeExpansion shows whether the storage class allow volume expand*/
     allowVolumeExpansion = null,
     /**Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}