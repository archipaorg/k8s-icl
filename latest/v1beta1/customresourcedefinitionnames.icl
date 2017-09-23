/**CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition*/
::orch "kubernetes" "CustomResourceDefinitionNames" as CustomResourceDefinitionNames @shortNames, @kind, @plural, @listKind, @singular {
     /**ShortNames are short names for the resource.  It must be all lowercase.*/
     shortNames = null,
     /**Kind is the serialized kind of the resource.  It is normally CamelCase and singular.*/
     kind = null,
     /**Plural is the plural name of the resource to serve.  It must match the name of the CustomResourceDefinition-registration
      too: plural.group and it must be all lowercase.*/
     plural = null,
     /**ListKind is the serialized kind of the list for this resource.  Defaults to <kind>List.*/
     listKind = null,
     /**Singular is the singular name of the resource.  It must be all lowercase  Defaults to lowercased
      <kind>*/
     singular = null
}