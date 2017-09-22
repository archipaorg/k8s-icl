/**ContainerStateTerminated is a terminated state of a container.*/
::orch "kubernetes" "ContainerStateTerminated" as ContainerStateTerminated @reason, @finishedAt, @containerID, @startedAt, @signal, @message, @exitCode {
     /**(brief) reason from the last termination of the container*/
     reason = null,
     /**Container's ID in the format 'docker://<container_id>'*/
     containerID = null,
     /**Signal from the last termination of the container*/
     signal = null,
     /**Message regarding the last termination of the container*/
     message = null,
     /**Exit status from the last termination of the container*/
     exitCode = null
}