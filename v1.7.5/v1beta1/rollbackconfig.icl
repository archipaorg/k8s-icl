/***/
::orch "kubernetes" "RollbackConfig" as RollbackConfig @revision {
     /**The revision to rollback to. If set to 0, rollback to the last revision.*/
     revision = null
}