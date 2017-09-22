/**CronJobStatus represents the current state of a cron job.*/
::orch "kubernetes" "CronJobStatus" as CronJobStatus @active, @lastScheduleTime {
     /**A list of pointers to currently running jobs.*/
     active = null
}