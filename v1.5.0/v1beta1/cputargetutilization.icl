/***/
::orch "kubernetes" "CPUTargetUtilization" as CPUTargetUtilization @targetPercentage {
     /**fraction of the requested CPU that should be utilized/used, e.g. 70 means that 70% of the
      requested CPU should be in use.*/
     targetPercentage = null
}