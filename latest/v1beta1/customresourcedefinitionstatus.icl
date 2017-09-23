take customresourcedefinitionnames

/**CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition*/
::orch "kubernetes" "CustomResourceDefinitionStatus" as CustomResourceDefinitionStatus @acceptedNames, @conditions {
     /**Conditions indicate state for particular aspects of a CustomResourceDefinition*/
     conditions = null,
     /**AcceptedNames are the names that are actually being used to serve discovery They may be
      different than the names in spec.*/
     CustomResourceDefinitionNames "acceptedNames" {}
}