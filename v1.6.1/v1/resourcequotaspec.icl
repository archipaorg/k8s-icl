/**ResourceQuotaSpec defines the desired hard limits to enforce for Quota.*/
::orch "kubernetes" "ResourceQuotaSpec" as ResourceQuotaSpec @scopes, @hard {
     /**A collection of filters that must match each object tracked by a quota. If not specified,
      the quota matches all objects.*/
     scopes = null,
     /**Hard is the set of desired hard limits for each named resource. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota*/
     hard = null
}