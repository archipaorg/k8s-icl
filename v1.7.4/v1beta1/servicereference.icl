/**ServiceReference holds a reference to Service.legacy.k8s.io*/
::orch "kubernetes" "ServiceReference" as ServiceReference @namespace, @name {
     /**Namespace is the namespace of the service*/
     namespace = null,
     /**Name is the name of the service*/
     name = null
}