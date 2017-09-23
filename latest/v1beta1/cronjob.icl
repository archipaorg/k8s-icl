take cronjobstatus,
     cronjobspec,
     ../v1/objectmeta

/**CronJob represents the configuration of a single cron job.*/
::orch "kubernetes" "CronJob" as CronJob @status, @kind, @spec, @apiVersion, @metadata {
     /**Kind is a string value representing the REST resource this object represents. Servers may
      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
     kind = "CronJob",
     /**APIVersion defines the versioned schema of this representation of an object. Servers should
      convert recognized schemas to the latest internal value, and may reject unrecognized values.
      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
     apiVersion = "v1beta1",
     /**Current status of a cron job. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     CronJobStatus "status" {}
     /**Specification of the desired behavior of a cron job, including the schedule. More info:
      https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     CronJobSpec "spec" {}
     /**Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}