/**ResourceQuotaStatus defines the enforced hard limits and observed use.*/
::orch "kubernetes" "ResourceQuotaStatus" as ResourceQuotaStatus @hard, @used {
     /**Hard is the set of enforced hard limits for each named resource. More info: https://git.k8s.io/community/contributors/design-proposals/admission_control_resource_quota.md*/
     hard = null,
     /**Used is the current observed total usage of the resource in the namespace.*/
     used = null
}