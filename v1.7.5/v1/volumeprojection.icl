take configmapprojection,
     secretprojection,
     downwardapiprojection

/**Projection that may be projected along with other supported volume types*/
::orch "kubernetes" "VolumeProjection" as VolumeProjection @configMap, @secret, @downwardAPI {
     /**information about the configMap data to project*/
     ConfigMapProjection "configMap" {}
     /**information about the secret data to project*/
     SecretProjection "secret" {}
     /**information about the downwardAPI data to project*/
     DownwardAPIProjection "downwardAPI" {}
}