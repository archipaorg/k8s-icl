/**LimitRangeSpec defines a min/max usage limit for resources that match on kind.*/
::orch "kubernetes" "LimitRangeSpec" as LimitRangeSpec @limits {
     /**Limits is the list of LimitRangeItem objects that are enforced.*/
     limits = null
}