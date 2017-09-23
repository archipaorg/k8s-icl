/**Host Port Range defines a range of host ports that will be enabled by a policy for pods
 to use.  It requires both the start and end to be defined.*/
::orch "kubernetes" "HostPortRange" as HostPortRange @max, @min {
     /**max is the end of the range, inclusive.*/
     max = null,
     /**min is the start of the range, inclusive.*/
     min = null
}