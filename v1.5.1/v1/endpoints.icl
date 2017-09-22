take objectmeta

/**Endpoints is a collection of endpoints that implement the actual service. Example:
  Name:
 "mysvc",
  Subsets: [
    {
      Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],

      Ports: [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
    },
    {
   
   Addresses: [{"ip": "10.10.3.3"}],
      Ports: [{"name": "a", "port": 93}, {"name": "b",
 "port": 76}]
    },
 ]*/
::orch "kubernetes" "Endpoints" as Endpoints @subsets, @metadata {
     /**The set of all endpoints is the union of all subsets. Addresses are placed into subsets
      according to the IPs they share. A single address with multiple ports, some of which are
      ready and some of which are not (because they come from different containers) will result
      in the address being displayed in different subsets for the different ports. No address
      will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses
      and ports that comprise a service.*/
     subsets = null,
     /**Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata*/
     ObjectMeta "metadata" {}
}