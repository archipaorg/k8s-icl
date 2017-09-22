/**ResourceQuotaList is a list of ResourceQuota items.*/
::orch "kubernetes" "ResourceQuotaList" as ResourceQuotaList @items, @metadata {
     /**Items is a list of ResourceQuota objects. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota*/
     items = null
}