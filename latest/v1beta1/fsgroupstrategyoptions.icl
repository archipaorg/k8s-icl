/**FSGroupStrategyOptions defines the strategy type and options used to create the strategy.*/
::orch "kubernetes" "FSGroupStrategyOptions" as FSGroupStrategyOptions @ranges, @rule {
     /**Ranges are the allowed ranges of fs groups.  If you would like to force a single fs group
      then supply a single range with the same start and end.*/
     ranges = null,
     /**Rule is the strategy that will dictate what FSGroup is used in the SecurityContext.*/
     rule = null
}