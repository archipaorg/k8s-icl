take certificatesigningrequeststatus,
     certificatesigningrequestspec,
     ../v1/objectmeta

/**Describes a certificate signing request*/
::orch "kubernetes" "CertificateSigningRequest" as CertificateSigningRequest @status, @spec, @metadata {
     /**Derived information about the request.*/
     CertificateSigningRequestStatus "status" {}
     /**The certificate request itself and any additional information.*/
     CertificateSigningRequestSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}