take servicereference

/**AdmissionHookClientConfig contains the information to make a TLS connection with the webhook*/
::orch "kubernetes" "AdmissionHookClientConfig" as AdmissionHookClientConfig @caBundle, @service {
     /**CABundle is a PEM encoded CA bundle which will be used to validate webhook's server certificate.
      Required*/
     caBundle = null,
     /**Service is a reference to the service for this webhook. If there is only one port open for
      the service, that port will be used. If there are multiple ports open, port 443 will be
      used if it is open, otherwise it is an error. Required*/
     ServiceReference "service" {}
}