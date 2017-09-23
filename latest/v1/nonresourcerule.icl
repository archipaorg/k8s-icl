/**NonResourceRule holds information that describes a rule for the non-resource*/
::orch "kubernetes" "NonResourceRule" as NonResourceRule @verbs, @nonResourceURLs {
     /**Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch,
      head, options.  "*" means all.*/
     verbs = null,
     /**NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed,
      but only as the full, final step in the path.  "*" means all.*/
     nonResourceURLs = null
}