/**ObjectReference contains enough information to let you inspect or modify the referred object.*/
::orch "kubernetes" "ObjectReference" as ObjectReference @fieldPath, @kind, @name, @resourceVersion, @namespace, @apiVersion, @uid {
     /**If referring to a piece of an object instead of an entire object, this string should contain
      a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For
      example, if the object reference is to a container within a pod, this would take on a value
      like: "spec.containers{name}" (where "name" refers to the name of the container that triggered
      the event) or if no container name is specified "spec.containers[2]" (container with index
      2 in this pod). This syntax is chosen only to have some well-defined way of referencing
      a part of an object.*/
     fieldPath = null,
     /**Kind of the referent. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names*/
     name = null,
     /**Specific resourceVersion to which this reference is made, if any. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency*/
     resourceVersion = null,
     /**Namespace of the referent. More info: http://kubernetes.io/docs/user-guide/namespaces*/
     namespace = null,
     /**API version of the referent.*/
     apiVersion = null,
     /**UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids*/
     uid = null
}