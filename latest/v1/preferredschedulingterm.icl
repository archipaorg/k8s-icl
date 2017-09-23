take nodeselectorterm

/**An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's
 a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).*/
::orch "kubernetes" "PreferredSchedulingTerm" as PreferredSchedulingTerm @preference, @weight {
     /**Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.*/
     weight = null,
     /**A node selector term, associated with the corresponding weight.*/
     NodeSelectorTerm "preference" {}
}