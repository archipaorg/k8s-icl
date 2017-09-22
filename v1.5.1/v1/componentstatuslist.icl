/**Status of all the conditions for the component as a list of ComponentStatus objects.*/
::orch "kubernetes" "ComponentStatusList" as ComponentStatusList @items, @metadata {
     /**List of ComponentStatus objects.*/
     items = null
}