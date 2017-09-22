/**Selects a key from a ConfigMap.*/
::orch "kubernetes" "ConfigMapKeySelector" as ConfigMapKeySelector @optional, @name, @key {
     /**Specify whether the ConfigMap or it's key must be defined*/
     optional = null,
     /**Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null,
     /**The key to select.*/
     key = null
}