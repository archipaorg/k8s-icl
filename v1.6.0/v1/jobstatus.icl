take time,
     time

/**JobStatus represents the current state of a Job.*/
::orch "kubernetes" "JobStatus" as JobStatus @failed, @completionTime, @startTime, @succeeded, @active, @conditions {
     /**Failed is the number of pods which reached Phase Failed.*/
     failed = null,
     /**Succeeded is the number of pods which reached Phase Succeeded.*/
     succeeded = null,
     /**Active is the number of actively running pods.*/
     active = null,
     /**Conditions represent the latest available observations of an object's current state. More
      info: http://kubernetes.io/docs/user-guide/jobs*/
     conditions = null,
     /**CompletionTime represents time when the job was completed. It is not guaranteed to be set
      in happens-before order across separate operations. It is represented in RFC3339 form and
      is in UTC.*/
     Time "completionTime" {}
     /**StartTime represents time when the job was acknowledged by the Job Manager. It is not guaranteed
      to be set in happens-before order across separate operations. It is represented in RFC3339
      form and is in UTC.*/
     Time "startTime" {}
}