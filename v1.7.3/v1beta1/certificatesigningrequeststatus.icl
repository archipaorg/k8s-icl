/***/
::orch "kubernetes" "CertificateSigningRequestStatus" as CertificateSigningRequestStatus @conditions, @certificate {
     /**Conditions applied to the request, such as approval or denial.*/
     conditions = null,
     /**If request was approved, the controller will place the issued certificate here.*/
     certificate = null
}