take admissionhookclientconfig

/**ExternalAdmissionHook describes an external admission webhook and the resources and operations
 it applies to.*/
::orch "kubernetes" "ExternalAdmissionHook" as ExternalAdmissionHook @rules, @failurePolicy, @clientConfig, @name {
     /**Rules describes what operations on what resources/subresources the webhook cares about.
      The webhook cares about an operation if it matches _any_ Rule.*/
     rules = null,
     /**FailurePolicy defines how unrecognized errors from the admission endpoint are handled -
      allowed values are Ignore or Fail. Defaults to Ignore.*/
     failurePolicy = null,
     /**The name of the external admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io,
      where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization.
      Required.*/
     name = null,
     /**ClientConfig defines how to communicate with the hook. Required*/
     AdmissionHookClientConfig "clientConfig" {}
}