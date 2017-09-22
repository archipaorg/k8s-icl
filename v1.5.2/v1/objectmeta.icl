/**ObjectMeta is metadata that all persisted resources must have, which includes all objects
 users must create.*/
::orch "kubernetes" "ObjectMeta" as ObjectMeta @name, @deletionTimestamp, @clusterName, @deletionGracePeriodSeconds, @labels, @namespace, @finalizers, @generation, @generateName, @resourceVersion, @ownerReferences, @creationTimestamp, @annotations, @selfLink, @uid {
     /**Name must be unique within a namespace. Is required when creating resources, although some
      resources may allow a client to request the generation of an appropriate name automatically.
      Name is primarily intended for creation idempotence and configuration definition. Cannot
      be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null,
     /**The name of the cluster which the object belongs to. This is used to distinguish resources
      with same name and namespace in different clusters. This field is not set anywhere right
      now and apiserver is going to ignore it if set in create or update request.*/
     clusterName = null,
     /**Number of seconds allowed for this object to gracefully terminate before it will be removed
      from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.*/
     deletionGracePeriodSeconds = null,
     /**Map of string keys and values that can be used to organize and categorize (scope and select)
      objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels*/
     labels = null,
     /**Namespace defines the space within each name must be unique. An empty namespace is equivalent
      to the "default" namespace, but "default" is the canonical representation. Not all objects
      are required to be scoped to a namespace - the value of this field for those objects will
      be empty.

     Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces*/
     namespace = null,
     /**Must be empty before the object is deleted from the registry. Each entry is an identifier
      for the responsible component that will remove the entry from the list. If the deletionTimestamp
      of the object is non-nil, entries in this list can only be removed.*/
     finalizers = null,
     /**A sequence number representing a specific generation of the desired state. Populated by
      the system. Read-only.*/
     generation = null,
     /**GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF
      the Name field has not been provided. If this field is used, the name returned to the client
      will be different than the name passed. This value will also be combined with a unique
      suffix. The provided value has the same validation rules as the Name field, and may be
      truncated by the length of the suffix required to make the value unique on the server.

     If
      this field is specified and the generated name exists, the server will NOT return a 409
      - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating
      a unique name could not be found in the time allotted, and the client should retry (optionally
      after the time indicated in the Retry-After header).

     Applied only if Name is not specified.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#idempotency*/
     generateName = null,
     /**An opaque value that represents the internal version of this object that can be used by
      clients to determine when objects have changed. May be used for optimistic concurrency,
      change detection, and the watch operation on a resource or set of resources. Clients must
      treat these values as opaque and passed unmodified back to the server. They may only be
      valid for a particular resource or set of resources.

     Populated by the system. Read-only.
      Value must be treated as opaque by clients and . More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency*/
     resourceVersion = null,
     /**List of objects depended by this object. If ALL objects in the list have been deleted, this
      object will be garbage collected. If this object is managed by a controller, then an entry
      in this list will point to this controller, with the controller field set to true. There
      cannot be more than one managing controller.*/
     ownerReferences = null,
     /**Annotations is an unstructured key value map stored with a resource that may be set by external
      tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved
      when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations*/
     annotations = null,
     /**SelfLink is a URL representing this object. Populated by the system. Read-only.*/
     selfLink = null,
     /**UID is the unique in time and space value for this object. It is typically generated by
      the server on successful creation of a resource and is not allowed to change on PUT operations.

     Populated
      by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids*/
     uid = null
}