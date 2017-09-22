take ../v1/jobspec

/**JobTemplateSpec describes the data a Job should have when created from a template*/
::orch "kubernetes" "JobTemplateSpec" as JobTemplateSpec @spec, @metadata {
     /**Specification of the desired behavior of the job. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status*/
     JobSpec "spec" {}
}