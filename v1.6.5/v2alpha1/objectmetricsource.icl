take crossversionobjectreference

/**ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for
 example, hits-per-second on an Ingress object).*/
::orch "kubernetes" "ObjectMetricSource" as ObjectMetricSource @targetValue, @target, @metricName {
     /**metricName is the name of the metric in question.*/
     metricName = null,
     /**target is the described Kubernetes object.*/
     CrossVersionObjectReference "target" {}
}