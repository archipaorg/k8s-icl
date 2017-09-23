/**SupplementalGroupsStrategyOptions defines the strategy type and options used to create the
 strategy.*/
::orch "kubernetes" "SupplementalGroupsStrategyOptions" as SupplementalGroupsStrategyOptions @ranges, @rule {
     /**Ranges are the allowed ranges of supplemental groups.  If you would like to force a single
      supplemental group then supply a single range with the same start and end.*/
     ranges = null,
     /**Rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.*/
     rule = null
}