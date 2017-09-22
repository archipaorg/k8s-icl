/**NodeList is the whole list of all Nodes which have been registered with master.*/
::orch "kubernetes" "NodeList" as NodeList @items, @metadata {
     /**List of nodes*/
     items = null
}