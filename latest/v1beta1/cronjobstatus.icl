take ../v1/time

/**CronJobStatus represents the current state of a cron job.*/
::orch "kubernetes" "CronJobStatus" as CronJobStatus @active, @lastScheduleTime {
     /**A list of pointers to currently running jobs.*/
     active = null,
     /**Information when was the last time the job was successfully scheduled.*/
     Time "lastScheduleTime" {}
}