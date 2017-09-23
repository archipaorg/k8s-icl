/**AzureFile represents an Azure File Service mount on the host and bind mount to the pod.*/
::orch "kubernetes" "AzureFilePersistentVolumeSource" as AzureFilePersistentVolumeSource @shareName, @readOnly, @secretNamespace, @secretName {
     /**Share Name*/
     shareName = null,
     /**Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.*/
     readOnly = null,
     /**the namespace of the secret that contains Azure Storage Account Name and Key default is
      the same as the Pod*/
     secretNamespace = null,
     /**the name of secret that contains Azure Storage Account Name and Key*/
     secretName = null
}