take networkpolicyspec,
     ../v1/objectmeta

/***/
::orch "kubernetes" "NetworkPolicy" as NetworkPolicy @spec, @metadata {
     /**Specification of the desired behavior for this NetworkPolicy.*/
     NetworkPolicySpec "spec" {}
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}