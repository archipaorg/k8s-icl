take ../v1/jobspec

/**JobTemplateSpec describes the data a Job should have when created from a template*/
::orch "kubernetes" "JobTemplateSpec" as JobTemplateSpec @spec, @metadata {
     /**Specification of the desired behavior of the job. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status*/
     JobSpec "spec" {}
}