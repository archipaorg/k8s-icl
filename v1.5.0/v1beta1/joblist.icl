/**JobList is a collection of jobs. DEPRECATED: extensions/v1beta1.JobList is deprecated, use
 batch/v1.JobList instead.*/
::orch "kubernetes" "JobList" as JobList @items, @metadata {
     /**Items is the list of Job.*/
     items = null
}