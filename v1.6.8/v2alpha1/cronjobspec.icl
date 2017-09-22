take jobtemplatespec

/**CronJobSpec describes how the job execution will look like and when it will actually run.*/
::orch "kubernetes" "CronJobSpec" as CronJobSpec @failedJobsHistoryLimit, @jobTemplate, @concurrencyPolicy, @suspend, @schedule, @startingDeadlineSeconds, @successfulJobsHistoryLimit {
     /**The number of failed finished jobs to retain. This is a pointer to distinguish between explicit
      zero and not specified.*/
     failedJobsHistoryLimit = null,
     /**ConcurrencyPolicy specifies how to treat concurrent executions of a Job. Defaults to Allow.*/
     concurrencyPolicy = null,
     /**Suspend flag tells the controller to suspend subsequent executions, it does not apply to
      already started executions.  Defaults to false.*/
     suspend = null,
     /**Schedule contains the schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.*/
     schedule = null,
     /**Optional deadline in seconds for starting the job if it misses scheduled time for any reason.
       Missed jobs executions will be counted as failed ones.*/
     startingDeadlineSeconds = null,
     /**The number of successful finished jobs to retain. This is a pointer to distinguish between
      explicit zero and not specified.*/
     successfulJobsHistoryLimit = null,
     /**JobTemplate is the object that describes the job that will be created when executing a CronJob.*/
     JobTemplateSpec "jobTemplate" {}
}