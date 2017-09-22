/**SecretList is a list of Secret.*/
::orch "kubernetes" "SecretList" as SecretList @items, @metadata {
     /**Items is a list of secret objects. More info: http://kubernetes.io/docs/user-guide/secrets*/
     items = null
}