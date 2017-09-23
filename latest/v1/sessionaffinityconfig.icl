take clientipconfig

/**SessionAffinityConfig represents the configurations of session affinity.*/
::orch "kubernetes" "SessionAffinityConfig" as SessionAffinityConfig @clientIP {
     /**clientIP contains the configurations of Client IP based session affinity.*/
     ClientIPConfig "clientIP" {}
}