/**SecretKeySelector selects a key of a Secret.*/
::orch "kubernetes" "SecretKeySelector" as SecretKeySelector @key {
     /**The key of the secret to select from.  Must be a valid secret key.*/
     key = null
}