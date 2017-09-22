/**LimitRangeItem defines a min/max usage limit for any resource that matches on kind.*/
::orch "kubernetes" "LimitRangeItem" as LimitRangeItem @defaultRequest, @min, @default, @max, @maxLimitRequestRatio, @type {
     /**DefaultRequest is the default resource requirement request value by resource name if resource
      request is omitted.*/
     defaultRequest = null,
     /**Min usage constraints on this kind by resource name.*/
     min = null,
     /**Default resource requirement limit value by resource name if resource limit is omitted.*/
     default = null,
     /**Max usage constraints on this kind by resource name.*/
     max = null,
     /**MaxLimitRequestRatio if specified, the named resource must have a request and limit that
      are both non-zero where limit divided by request is less than or equal to the enumerated
      value; this represents the max burst for the named resource.*/
     maxLimitRequestRatio = null,
     /**Type of resource that this limit applies to.*/
     type = null
}