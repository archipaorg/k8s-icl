/**Selects a key from a ConfigMap.*/
::orch "kubernetes" "ConfigMapKeySelector" as ConfigMapKeySelector @name, @key {
     /**Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null,
     /**The key to select.*/
     key = null
}