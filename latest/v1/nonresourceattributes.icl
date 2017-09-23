/**NonResourceAttributes includes the authorization attributes available for non-resource requests
 to the Authorizer interface*/
::orch "kubernetes" "NonResourceAttributes" as NonResourceAttributes @path, @verb {
     /**Path is the URL path of the request*/
     path = null,
     /**Verb is the standard HTTP verb*/
     verb = null
}