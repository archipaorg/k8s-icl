/**SecretEnvSource selects a Secret to populate the environment variables with.

The contents
 of the target Secret's Data field will represent the key-value pairs as environment variables.*/
::orch "kubernetes" "SecretEnvSource" as SecretEnvSource @optional, @name {
     /**Specify whether the Secret must be defined*/
     optional = null,
     /**Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names*/
     name = null
}