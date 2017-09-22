/**PodTemplateList is a list of PodTemplates.*/
::orch "kubernetes" "PodTemplateList" as PodTemplateList @items, @metadata {
     /**List of pod templates*/
     items = null
}