/**Adds and removes POSIX capabilities from running containers.*/
::orch "kubernetes" "Capabilities" as Capabilities @add, @drop {
     /**Added capabilities*/
     add = null,
     /**Removed capabilities*/
     drop = null
}