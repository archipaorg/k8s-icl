take listmeta

/**Status of all the conditions for the component as a list of ComponentStatus objects.*/
::orch "kubernetes" "ComponentStatusList" as ComponentStatusList @items, @kind, @apiVersion, @metadata {
     /**List of ComponentStatus objects.*/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Standard list metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     ListMeta "metadata" {}
}