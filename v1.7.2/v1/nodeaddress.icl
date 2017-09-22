/**NodeAddress contains information for the node's address.*/
::orch "kubernetes" "NodeAddress" as NodeAddress @type, @address {
     /**Node address type, one of Hostname, ExternalIP or InternalIP.*/
     type = null,
     /**The node address.*/
     address = null
}