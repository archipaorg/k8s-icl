take ../v1/time

/***/
::orch "kubernetes" "CertificateSigningRequestCondition" as CertificateSigningRequestCondition @message, @type, @reason, @lastUpdateTime {
     /**human readable message with details about the request state*/
     message = null,
     /**request approval state, currently Approved or Denied.*/
     type = null,
     /**brief reason for the request state*/
     reason = null,
     /**timestamp for the last update to this condition*/
     Time "lastUpdateTime" {}
}