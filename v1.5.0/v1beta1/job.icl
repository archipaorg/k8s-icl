take jobstatus,
     jobspec,
     ../v1/objectmeta

/**Job represents the configuration of a single job. DEPRECATED: extensions/v1beta1.Job is
 deprecated, use batch/v1.Job instead.*/
::orch "kubernetes" "Job" as Job @status, @spec, @metadata {
     /**Status is a structure describing current status of a job. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     JobStatus "status" {}
     /**Spec is a structure defining the expected behavior of a job. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     JobSpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}