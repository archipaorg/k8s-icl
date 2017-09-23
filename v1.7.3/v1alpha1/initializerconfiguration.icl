take ../v1/objectmeta

/**InitializerConfiguration describes the configuration of initializers.*/
::orch "kubernetes" "InitializerConfiguration" as InitializerConfiguration @kind, @initializers, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "InitializerConfiguration",
     /**Initializers is a list of resources and their default initializers Order-sensitive. When
      merging multiple InitializerConfigurations, we sort the initializers from different InitializerConfigurations
      by the name of the InitializerConfigurations; the order of the initializers from the same
      InitializerConfiguration is preserved.*/
     initializers = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1alpha1",
     /**Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.*/
     ObjectMeta "metadata" {}
}