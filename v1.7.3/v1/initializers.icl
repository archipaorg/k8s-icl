take status

/**Initializers tracks the progress of initialization.*/
::orch "kubernetes" "Initializers" as Initializers @result, @pending {
     /**Pending is a list of initializers that must execute in order before this object is visible.
      When the last pending initializer is removed, and no failing result is set, the initializers
      struct will be set to nil and the object is considered as initialized and visible to all
      clients.*/
     pending = null,
     /**If result is set with the Failure field, the object will be persisted to storage and then
      deleted, ensuring that other clients can observe the deletion.*/
     Status "result" {}
}