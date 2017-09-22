/**This information is immutable after the request is created. Only the Request and Usages
 fields can be set on creation, other fields are derived by Kubernetes and cannot be modified
 by users.*/
::orch "kubernetes" "CertificateSigningRequestSpec" as CertificateSigningRequestSpec @username, @usages, @uid, @groups, @extra, @request {
     /**Information about the requesting user. See user.Info interface for details.*/
     username = null,
     /**allowedUsages specifies a set of usage contexts the key will be valid for. See: https://tools.ietf.org/html/rfc5280#section-4.2.1.3

          https://tools.ietf.org/html/rfc5280#section-4.2.1.12*/
     usages = null,
     /**UID information about the requesting user. See user.Info interface for details.*/
     uid = null,
     /**Group information about the requesting user. See user.Info interface for details.*/
     groups = null,
     /**Extra information about the requesting user. See user.Info interface for details.*/
     extra = null,
     /**Base64-encoded PKCS#10 CSR data*/
     request = null
}