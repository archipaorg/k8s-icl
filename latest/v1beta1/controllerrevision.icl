take ../v1/objectmeta

/**DEPRECATED - This group version of ControllerRevision is deprecated by apps/v1beta2/ControllerRevision.
 See the release notes for more information. ControllerRevision implements an immutable
 snapshot of state data. Clients are responsible for serializing and deserializing the objects
 that contain their internal state. Once a ControllerRevision has been successfully created,
 it can not be updated. The API Server will fail validation of all requests that attempt
 to mutate the Data field. ControllerRevisions may, however, be deleted. Note that, due
 to its use by both the DaemonSet and StatefulSet controllers for update and rollback, this
 object is beta. However, it may be subject to name and representation changes in future
 releases, and clients should not depend on its stability. It is primarily for internal
 use by controllers.*/
::orch "kubernetes" "ControllerRevision" as ControllerRevision @kind, @metadata, @data, @apiVersion, @revision {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "ControllerRevision",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Revision indicates the revision of the state represented by Data.*/
     revision = null,
     /**Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}