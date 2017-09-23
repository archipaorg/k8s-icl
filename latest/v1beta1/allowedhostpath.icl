/**defines the host volume conditions that will be enabled by a policy for pods to use. It
 requires the path prefix to be defined.*/
::orch "kubernetes" "AllowedHostPath" as AllowedHostPath @pathPrefix {
     /**is the path prefix that the host volume must match. It does not support `*`. Trailing slashes
      are trimmed when validating the path prefix with a host path.

     Examples: `/foo` would allow
      `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`*/
     pathPrefix = null
}