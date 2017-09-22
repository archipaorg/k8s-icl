take crossversionobjectreference

/**ObjectMetricStatus indicates the current value of a metric describing a kubernetes object
 (for example, hits-per-second on an Ingress object).*/
::orch "kubernetes" "ObjectMetricStatus" as ObjectMetricStatus @currentValue, @target, @metricName {
     /**metricName is the name of the metric in question.*/
     metricName = null,
     /**target is the described Kubernetes object.*/
     CrossVersionObjectReference "target" {}
}