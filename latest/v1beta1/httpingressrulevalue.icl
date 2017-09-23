/**HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart>
 -> backend where where parts of the url correspond to RFC 3986, this resource will be used
 to match against everything after the last '/' and before the first '?' or '#'.*/
::orch "kubernetes" "HTTPIngressRuleValue" as HTTPIngressRuleValue @paths {
     /**A collection of paths that map requests to backends.*/
     paths = null
}