/**PodStatus represents information about the status of a pod. Status may trail the actual
 state of a system.*/
::orch "kubernetes" "PodStatus" as PodStatus @containerStatuses, @reason, @podIP, @startTime, @hostIP, @phase, @message, @conditions {
     /**The list has one entry per container in the manifest. Each entry is currently the output
      of `docker inspect`. More info: http://kubernetes.io/docs/user-guide/pod-states#container-statuses*/
     containerStatuses = null,
     /**A brief CamelCase message indicating details about why the pod is in this state. e.g. 'OutOfDisk'*/
     reason = null,
     /**IP address allocated to the pod. Routable at least within the cluster. Empty if not yet
      allocated.*/
     podIP = null,
     /**IP address of the host to which the pod is assigned. Empty if not yet scheduled.*/
     hostIP = null,
     /**Current condition of the pod. More info: http://kubernetes.io/docs/user-guide/pod-states#pod-phase*/
     phase = null,
     /**A human readable message indicating details about why the pod is in this condition.*/
     message = null,
     /**Current service state of pod. More info: http://kubernetes.io/docs/user-guide/pod-states#pod-conditions*/
     conditions = null
}