take jobtemplatespec

/**CronJobSpec describes how the job execution will look like and when it will actually run.*/
::orch "kubernetes" "CronJobSpec" as CronJobSpec @jobTemplate, @startingDeadlineSeconds, @concurrencyPolicy, @suspend, @schedule {
     /**Optional deadline in seconds for starting the job if it misses scheduled time for any reason.
       Missed jobs executions will be counted as failed ones.*/
     startingDeadlineSeconds = null,
     /**ConcurrencyPolicy specifies how to treat concurrent executions of a Job.*/
     concurrencyPolicy = null,
     /**Suspend flag tells the controller to suspend subsequent executions, it does not apply to
      already started executions.  Defaults to false.*/
     suspend = null,
     /**Schedule contains the schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.*/
     schedule = null,
     /**JobTemplate is the object that describes the job that will be created when executing a CronJob.*/
     JobTemplateSpec "jobTemplate" {}
}