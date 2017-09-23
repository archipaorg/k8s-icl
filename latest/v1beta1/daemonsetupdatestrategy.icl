take rollingupdatedaemonset

/***/
::orch "kubernetes" "DaemonSetUpdateStrategy" as DaemonSetUpdateStrategy @rollingUpdate, @type {
     /**Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is OnDelete.*/
     type = null,
     /**Rolling update config params. Present only if type = "RollingUpdate".*/
     RollingUpdateDaemonSet "rollingUpdate" {}
}