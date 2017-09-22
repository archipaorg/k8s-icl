/**This information is immutable after the request is created. Only the Request and ExtraInfo
 fields can be set on creation, other fields are derived by Kubernetes and cannot be modified
 by users.*/
::orch "kubernetes" "CertificateSigningRequestSpec" as CertificateSigningRequestSpec @username, @request, @uid, @groups {
     /**Information about the requesting user (if relevant) See user.Info interface for details*/
     username = null,
     /**Base64-encoded PKCS#10 CSR data*/
     request = null,
     /***/
     uid = null,
     /***/
     groups = null
}