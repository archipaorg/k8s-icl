/**RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.*/
::orch "kubernetes" "RollingUpdateStatefulSetStrategy" as RollingUpdateStatefulSetStrategy @partition {
     /**Partition indicates the ordinal at which the StatefulSet should be partitioned. Default
      value is 0.*/
     partition = null
}