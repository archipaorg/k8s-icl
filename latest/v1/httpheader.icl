/**HTTPHeader describes a custom header to be used in HTTP probes*/
::orch "kubernetes" "HTTPHeader" as HTTPHeader @name, @value {
     /**The header field name*/
     name = null,
     /**The header field value*/
     value = null
}