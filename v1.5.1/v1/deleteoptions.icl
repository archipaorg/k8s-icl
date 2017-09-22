take preconditions

/**DeleteOptions may be provided when deleting an API object*/
::orch "kubernetes" "DeleteOptions" as DeleteOptions @gracePeriodSeconds, @preconditions, @orphanDependents {
     /**The duration in seconds before the object should be deleted. Value must be non-negative
      integer. The value zero indicates delete immediately. If this value is nil, the default
      grace period for the specified type will be used. Defaults to a per object value if not
      specified. zero means delete immediately.*/
     gracePeriodSeconds = null,
     /**Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be
      added to/removed from the object's finalizers list.*/
     orphanDependents = null,
     /**Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status
      will be returned.*/
     Preconditions "preconditions" {}
}