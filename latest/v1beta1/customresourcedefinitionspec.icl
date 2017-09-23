take customresourcevalidation,
     customresourcedefinitionnames

/**CustomResourceDefinitionSpec describes how a user wants their resource to appear*/
::orch "kubernetes" "CustomResourceDefinitionSpec" as CustomResourceDefinitionSpec @scope, @validation, @group, @names, @version {
     /**Scope indicates whether this resource is cluster or namespace scoped.  Default is namespaced*/
     scope = null,
     /**Group is the group this resource belongs in*/
     group = null,
     /**Version is the version this resource belongs in*/
     version = null,
     /**Validation describes the validation methods for CustomResources This field is alpha-level
      and should only be sent to servers that enable the CustomResourceValidation feature.*/
     CustomResourceValidation "validation" {}
     /**Names are the names used to describe this custom resource*/
     CustomResourceDefinitionNames "names" {}
}