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
::orch "kubernetes" "StatefulSet" as StatefulSet @status, @spec, @metadata {
     /**Status is the current status of Pods in this StatefulSet. This data may be out of date by
      some window of time.*/
     StatefulSetStatus "status" {}
     /**Spec defines the desired identities of pods in this set.*/
     StatefulSetSpec "spec" {}
     /***/
     ObjectMeta "metadata" {}
}