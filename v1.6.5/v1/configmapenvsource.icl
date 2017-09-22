/**ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.

The
 contents of the target ConfigMap's Data field will represent the key-value pairs as environment
 variables.*/
::orch "kubernetes" "ConfigMapEnvSource" as ConfigMapEnvSource @optional, @name {
     /**Specify whether the ConfigMap must be defined*/
     optional = null,
     /**Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null
}