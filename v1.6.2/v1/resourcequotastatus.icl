/**ResourceQuotaStatus defines the enforced hard limits and observed use.*/
::orch "kubernetes" "ResourceQuotaStatus" as ResourceQuotaStatus @hard, @used {
     /**Hard is the set of enforced hard limits for each named resource. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota*/
     hard = null,
     /**Used is the current observed total usage of the resource in the namespace.*/
     used = null
}