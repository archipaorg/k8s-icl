/**SecretReference represents a Secret Reference. It has enough information to retrieve secret
 in any namespace*/
::orch "kubernetes" "SecretReference" as SecretReference @namespace, @name {
     /**Namespace defines the space within which the secret name must be unique.*/
     namespace = null,
     /**Name is unique within a namespace to reference a secret resource.*/
     name = null
}