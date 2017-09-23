take configmapenvsource,
     secretenvsource

/**EnvFromSource represents the source of a set of ConfigMaps*/
::orch "kubernetes" "EnvFromSource" as EnvFromSource @prefix, @configMapRef, @secretRef {
     /**An optional identifer to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.*/
     prefix = null,
     /**The ConfigMap to select from*/
     ConfigMapEnvSource "configMapRef" {}
     /**The Secret to select from*/
     SecretEnvSource "secretRef" {}
}