take objectmeta

/**Secret holds secret data of a certain type. The total bytes of the values in the Data field
 must be less than MaxSecretSize bytes.*/
::orch "kubernetes" "Secret" as Secret @stringData, @metadata, @type, @data {
     /**stringData allows specifying non-binary secret data in string form. It is provided as a
      write-only convenience method. All keys and values are merged into the data field on write,
      overwriting any existing values. It is never output when reading from the API.*/
     stringData = null,
     /**Used to facilitate programmatic handling of secret data.*/
     type = null,
     /**Data contains the secret data. Each key must be a valid DNS_SUBDOMAIN or leading dot followed
      by valid DNS_SUBDOMAIN. The serialized form of the secret data is a base64 encoded string,
      representing the arbitrary (possibly non-string) data value here. Described in https://tools.ietf.org/html/rfc4648#section-4*/
     data = null,
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}