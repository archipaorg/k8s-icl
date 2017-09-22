/**JobStatus represents the current state of a Job.*/
::orch "kubernetes" "JobStatus" as JobStatus @failed, @completionTime, @startTime, @succeeded, @active, @conditions {
     /**The number of pods which reached phase Failed.*/
     failed = null,
     /**The number of pods which reached phase Succeeded.*/
     succeeded = null,
     /**The number of actively running pods.*/
     active = null,
     /**The latest available observations of an object's current state. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/*/
     conditions = null
}