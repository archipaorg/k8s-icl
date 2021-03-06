take time

/**The node this Taint is attached to has the "effect" on any pod that does not tolerate the
 Taint.*/
::orch "kubernetes" "Taint" as Taint @key, @timeAdded, @effect, @value {
     /**Required. The taint key to be applied to a node.*/
     key = null,
     /**Required. The effect of the taint on pods that do not tolerate the taint. Valid effects
      are NoSchedule, PreferNoSchedule and NoExecute.*/
     effect = null,
     /**Required. The taint value corresponding to the taint key.*/
     value = null,
     /**TimeAdded represents the time at which the taint was added. It is only written for NoExecute
      taints.*/
     Time "timeAdded" {}
}