take rollingupdatestatefulsetstrategy

/**StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use
 to perform updates. It includes any additional parameters necessary to perform the update
 for the indicated strategy.*/
::orch "kubernetes" "StatefulSetUpdateStrategy" as StatefulSetUpdateStrategy @rollingUpdate, @type {
     /**Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.*/
     type = null,
     /**RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.*/
     RollingUpdateStatefulSetStrategy "rollingUpdate" {}
}