take cronjobstatus,
     cronjobspec,
     ../v1/objectmeta

/**CronJob represents the configuration of a single cron job.*/
::orch "kubernetes" "CronJob" as CronJob @status, @spec, @metadata {
     /**Status is a structure describing current status of a job. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     CronJobStatus "status" {}
     /**Spec is a structure defining the expected behavior of a job, including the schedule. More
      info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     CronJobSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}