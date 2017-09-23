take ../v1/objectmeta

/**PriorityClass defines mapping from a priority class name to the priority integer value.
 The value can be any valid integer.*/
::orch "kubernetes" "PriorityClass" as PriorityClass @kind, @description, @apiVersion, @globalDefault, @value, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "PriorityClass",
     /**description is an arbitrary string that usually provides guidelines on when this priority
      class should be used.*/
     description = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1alpha1",
     /**globalDefault specifies whether this PriorityClass should be considered as the default priority
      for pods that do not have any priority class.*/
     globalDefault = null,
     /**The value of this priority class. This is the actual priority that pods receive when they
      have the name of this class in their pod spec.*/
     value = null,
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}