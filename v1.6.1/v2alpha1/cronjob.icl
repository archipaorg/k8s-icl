take cronjobstatus,
     cronjobspec

/**CronJob represents the configuration of a single cron job.*/
::orch "kubernetes" "CronJob" as CronJob @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds*/
     kind = null,
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources*/
     apiVersion = null,
     /**Status is a structure describing current status of a job. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     CronJobStatus "status" {}
     /**Spec is a structure defining the expected behavior of a job, including the schedule. More
      info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     CronJobSpec "spec" {}
}