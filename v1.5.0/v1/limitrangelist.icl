/**LimitRangeList is a list of LimitRange items.*/
::orch "kubernetes" "LimitRangeList" as LimitRangeList @items, @metadata {
     /**Items is a list of LimitRange objects. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_limit_range.md*/
     items = null
}