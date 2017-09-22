/**AzureFile represents an Azure File Service mount on the host and bind mount to the pod.*/
::orch "kubernetes" "AzureFileVolumeSource" as AzureFileVolumeSource @shareName, @readOnly, @secretName {
     /**Share Name*/
     shareName = null,
     /**Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.*/
     readOnly = null,
     /**the name of secret that contains Azure Storage Account Name and Key*/
     secretName = null
}