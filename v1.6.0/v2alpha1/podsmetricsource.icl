/**PodsMetricSource indicates how to scale on a metric describing each pod in the current scale
 target (for example, transactions-processed-per-second). The values will be averaged together
 before being compared to the target value.*/
::orch "kubernetes" "PodsMetricSource" as PodsMetricSource @targetAverageValue, @metricName {
     /**metricName is the name of the metric in question*/
     metricName = null
}