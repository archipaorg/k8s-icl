/**Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName
 and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux
 relabeling.*/
::orch "kubernetes" "FlockerVolumeSource" as FlockerVolumeSource @datasetName, @datasetUUID {
     /**Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered
      as deprecated*/
     datasetName = null,
     /**UUID of the dataset. This is unique identifier of a Flocker dataset*/
     datasetUUID = null
}