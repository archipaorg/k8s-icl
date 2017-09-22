/**CronJobList is a collection of cron jobs.*/
::orch "kubernetes" "CronJobList" as CronJobList @items, @metadata {
     /**Items is the list of CronJob.*/
     items = null
}