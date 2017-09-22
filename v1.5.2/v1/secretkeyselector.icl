/**SecretKeySelector selects a key of a Secret.*/
::orch "kubernetes" "SecretKeySelector" as SecretKeySelector @name, @key {
     /**Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null,
     /**The key of the secret to select from.  Must be a valid secret key.*/
     key = null
}