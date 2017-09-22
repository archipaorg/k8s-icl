/**Initializer describes the name and the failure policy of an initializer, and what resources
 it applies to.*/
::orch "kubernetes" "Initializer" as Initializer @rules, @failurePolicy, @name {
     /**Rules describes what resources/subresources the initializer cares about. The initializer
      cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.*/
     rules = null,
     /**FailurePolicy defines what happens if the responsible initializer controller fails to takes
      action. Allowed values are Ignore, or Fail. If "Ignore" is set, initializer is removed
      from the initializers list of an object if the timeout is reached; If "Fail" is set, admissionregistration
      returns timeout error if the timeout is reached.*/
     failurePolicy = null,
     /**Name is the identifier of the initializer. It will be added to the object that needs to
      be initialized. Name should be fully qualified, e.g., alwayspullimages.kubernetes.io, where
      "alwayspullimages" is the name of the webhook, and kubernetes.io is the name of the organization.
      Required*/
     name = null
}