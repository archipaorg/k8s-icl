/**ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.

The
 contents of the target ConfigMap's Data field will represent the key-value pairs as environment
 variables.*/
::orch "kubernetes" "ConfigMapEnvSource" as ConfigMapEnvSource @optional, @name {
     /**Specify whether the ConfigMap must be defined*/
     optional = null,
     /**Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names*/
     name = null
}