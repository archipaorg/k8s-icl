take ../v1/time

/**CronJobStatus represents the current state of a cron job.*/
::orch "kubernetes" "CronJobStatus" as CronJobStatus @active, @lastScheduleTime {
     /**Active holds pointers to currently running jobs.*/
     active = null,
     /**LastScheduleTime keeps information of when was the last time the job was successfully scheduled.*/
     Time "lastScheduleTime" {}
}