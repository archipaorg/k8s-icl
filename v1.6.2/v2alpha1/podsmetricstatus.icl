/**PodsMetricStatus indicates the current value of a metric describing each pod in the current
 scale target (for example, transactions-processed-per-second).*/
::orch "kubernetes" "PodsMetricStatus" as PodsMetricStatus @currentAverageValue, @metricName {
     /**metricName is the name of the metric in question*/
     metricName = null
}