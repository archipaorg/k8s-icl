take subjectaccessreviewstatus,
     subjectaccessreviewspec,
     ../v1/objectmeta

/**LocalSubjectAccessReview checks whether or not a user or group can perform an action in
 a given namespace. Having a namespace scoped resource makes it much easier to grant namespace
 scoped policy that includes permissions checking.*/
::orch "kubernetes" "LocalSubjectAccessReview" as LocalSubjectAccessReview @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Status is filled in by the server and indicates whether the request is allowed or not*/
     SubjectAccessReviewStatus "status" {}
     /**Spec holds information about the request being evaluated.  spec.namespace must be equal
      to the namespace you made the request against.  If empty, it is defaulted.*/
     SubjectAccessReviewSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}