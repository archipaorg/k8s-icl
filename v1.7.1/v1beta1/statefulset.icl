take statefulsetstatus,
     statefulsetspec,
     ../v1/objectmeta

/**StatefulSet represents a set of pods with consistent identities. Identities are defined
 as:
 - Network: A single stable DNS and hostname.
 - Storage: As many VolumeClaims as requested.
The
 StatefulSet guarantees that a given network identity will always map to the same storage
 identity.*/
::orch "kubernetes" "StatefulSet" as StatefulSet @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "StatefulSet",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Status is the current status of Pods in this StatefulSet. This data may be out of date by
      some window of time.*/
     StatefulSetStatus "status" {}
     /**Spec defines the desired identities of pods in this set.*/
     StatefulSetSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}