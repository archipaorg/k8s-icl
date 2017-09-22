/**Selects a key from a ConfigMap.*/
::orch "kubernetes" "ConfigMapKeySelector" as ConfigMapKeySelector @key {
     /**The key to select.*/
     key = null
}