take rollingupdatedaemonset

/**DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.*/
::orch "kubernetes" "DaemonSetUpdateStrategy" as DaemonSetUpdateStrategy @rollingUpdate, @type {
     /**Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.*/
     type = null,
     /**Rolling update config params. Present only if type = "RollingUpdate".*/
     RollingUpdateDaemonSet "rollingUpdate" {}
}