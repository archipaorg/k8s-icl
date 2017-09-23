/**UserInfo holds the information about the user needed to implement the user.Info interface.*/
::orch "kubernetes" "UserInfo" as UserInfo @username, @uid, @groups, @extra {
     /**The name that uniquely identifies this user among all active users.*/
     username = null,
     /**A unique value that identifies this user across time. If this user is deleted and another
      user by the same name is added, they will have different UIDs.*/
     uid = null,
     /**The names of groups this user is a part of.*/
     groups = null,
     /**Any additional information provided by the authenticator.*/
     extra = null
}