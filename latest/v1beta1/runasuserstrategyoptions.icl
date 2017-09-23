/**Run A sUser Strategy Options defines the strategy type and any options used to create the
 strategy.*/
::orch "kubernetes" "RunAsUserStrategyOptions" as RunAsUserStrategyOptions @ranges, @rule {
     /**Ranges are the allowed ranges of uids that may be used.*/
     ranges = null,
     /**Rule is the strategy that will dictate the allowable RunAsUser values that may be set.*/
     rule = null
}