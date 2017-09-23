take ../v1/listmeta

/**PodDisruptionBudgetList is a collection of PodDisruptionBudgets.*/
::orch "kubernetes" "PodDisruptionBudgetList" as PodDisruptionBudgetList @items, @kind, @apiVersion, @metadata {
     /***/
     items = null,
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /***/
     ListMeta "metadata" {}
}