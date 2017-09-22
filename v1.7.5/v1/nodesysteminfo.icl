/**NodeSystemInfo is a set of ids/uuids to uniquely identify the node.*/
::orch "kubernetes" "NodeSystemInfo" as NodeSystemInfo @kernelVersion, @kubeletVersion, @containerRuntimeVersion, @machineID, @kubeProxyVersion, @bootID, @osImage, @architecture, @systemUUID, @operatingSystem {
     /**Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).*/
     kernelVersion = null,
     /**Kubelet Version reported by the node.*/
     kubeletVersion = null,
     /**ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).*/
     containerRuntimeVersion = null,
     /**MachineID reported by the node. For unique machine identification in the cluster this field
      is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html*/
     machineID = null,
     /**KubeProxy Version reported by the node.*/
     kubeProxyVersion = null,
     /**Boot ID reported by the node.*/
     bootID = null,
     /**OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).*/
     osImage = null,
     /**The Architecture reported by the node*/
     architecture = null,
     /**SystemUUID reported by the node. For unique machine identification MachineID is preferred.
      This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html*/
     systemUUID = null,
     /**The Operating System reported by the node*/
     operatingSystem = null
}