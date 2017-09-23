take customresourcedefinitionstatus,
     customresourcedefinitionspec,
     ../v1/objectmeta

/**CustomResourceDefinition represents a resource that should be exposed on the API server.
  Its name MUST be in the format <.spec.name>.<.spec.group>.*/
::orch "kubernetes" "CustomResourceDefinition" as CustomResourceDefinition @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Status indicates the actual state of the CustomResourceDefinition*/
     CustomResourceDefinitionStatus "status" {}
     /**Spec describes how the user wants the resources to appear*/
     CustomResourceDefinitionSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}