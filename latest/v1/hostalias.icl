/**HostAlias holds the mapping between IP and hostnames that will be injected as an entry in
 the pod's hosts file.*/
::orch "kubernetes" "HostAlias" as HostAlias @ip, @hostnames {
     /**IP address of the host file entry.*/
     ip = null,
     /**Hostnames for the above IP address.*/
     hostnames = null
}