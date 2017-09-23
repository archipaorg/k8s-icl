/**GroupVersion contains the "group/version" and "version" string of a version. It is made
 a struct to keep extensibility.*/
::orch "kubernetes" "GroupVersionForDiscovery" as GroupVersionForDiscovery @groupVersion, @version {
     /**groupVersion specifies the API group and version in the form "group/version"*/
     groupVersion = null,
     /**version specifies the version in the form of "version". This is to save the clients the
      trouble of splitting the GroupVersion.*/
     version = null
}