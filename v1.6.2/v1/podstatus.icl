take time

/**PodStatus represents information about the status of a pod. Status may trail the actual
 state of a system.*/
::orch "kubernetes" "PodStatus" as PodStatus @initContainerStatuses, @qosClass, @containerStatuses, @reason, @podIP, @startTime, @hostIP, @phase, @message, @conditions {
     /**The list has one entry per init container in the manifest. The most recent successful init
      container will have ready = true, the most recently started container will have startTime
      set. More info: http://kubernetes.io/docs/user-guide/pod-states#container-statuses*/
     initContainerStatuses = null,
     /**The Quality of Service (QOS) classification assigned to the pod based on resource requirements
      See PodQOSClass type for available QOS classes More info: https://github.com/kubernetes/kubernetes/blob/master/docs/design/resource-qos.md*/
     qosClass = null,
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
     conditions = null,
     /**RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before
      the Kubelet pulled the container image(s) for the pod.*/
     Time "startTime" {}
}