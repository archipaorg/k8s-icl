/**Adapts a secret into a projected volume.

The contents of the target Secret's Data field
 will be presented in a projected volume as files using the keys in the Data field as the
 file names. Note that this is identical to a secret volume source without the default mode.*/
::orch "kubernetes" "SecretProjection" as SecretProjection @items, @optional, @name {
     /**If unspecified, each key-value pair in the Data field of the referenced Secret will be projected
      into the volume as a file whose name is the key and content is the value. If specified,
      the listed keys will be projected into the specified paths, and unlisted keys will not
      be present. If a key is specified which is not present in the Secret, the volume setup
      will error unless it is marked optional. Paths must be relative and may not contain the
      '..' path or start with '..'.*/
     items = null,
     /**Specify whether the Secret or its key must be defined*/
     optional = null,
     /**Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null
}