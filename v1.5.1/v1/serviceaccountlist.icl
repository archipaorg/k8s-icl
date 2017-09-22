/**ServiceAccountList is a list of ServiceAccount objects*/
::orch "kubernetes" "ServiceAccountList" as ServiceAccountList @items, @metadata {
     /**List of ServiceAccounts. More info: http://releases.k8s.io/HEAD/docs/design/service_accounts.md#service-accounts*/
     items = null
}