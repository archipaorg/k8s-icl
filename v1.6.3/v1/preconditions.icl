/**Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.*/
::orch "kubernetes" "Preconditions" as Preconditions @uid {
     /**Specifies the target UID.*/
     uid = null
}