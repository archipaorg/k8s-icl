take certificatesigningrequeststatus,
     certificatesigningrequestspec,
     ../v1/objectmeta

/**Describes a certificate signing request*/
::orch "kubernetes" "CertificateSigningRequest" as CertificateSigningRequest @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Derived information about the request.*/
     CertificateSigningRequestStatus "status" {}
     /**The certificate request itself and any additional information.*/
     CertificateSigningRequestSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}