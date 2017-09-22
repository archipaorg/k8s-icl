/**A null or empty node selector term matches no objects.*/
::orch "kubernetes" "NodeSelectorTerm" as NodeSelectorTerm @matchExpressions {
     /**Required. A list of node selector requirements. The requirements are ANDed.*/
     matchExpressions = null
}