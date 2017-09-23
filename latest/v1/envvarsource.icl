take secretkeyselector,
     objectfieldselector,
     configmapkeyselector,
     resourcefieldselector

/**EnvVarSource represents a source for the value of an EnvVar.*/
::orch "kubernetes" "EnvVarSource" as EnvVarSource @secretKeyRef, @fieldRef, @configMapKeyRef, @resourceFieldRef {
     /**Selects a key of a secret in the pod's namespace*/
     SecretKeySelector "secretKeyRef" {}
     /**Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels,
      metadata.annotations, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP.*/
     ObjectFieldSelector "fieldRef" {}
     /**Selects a key of a ConfigMap.*/
     ConfigMapKeySelector "configMapKeyRef" {}
     /**Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory,
      limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage)
      are currently supported.*/
     ResourceFieldSelector "resourceFieldRef" {}
}