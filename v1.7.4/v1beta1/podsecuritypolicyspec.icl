take supplementalgroupsstrategyoptions,
     fsgroupstrategyoptions,
     runasuserstrategyoptions,
     selinuxstrategyoptions

/**Pod Security Policy Spec defines the policy enforced.*/
::orch "kubernetes" "PodSecurityPolicySpec" as PodSecurityPolicySpec @allowedCapabilities, @hostPorts, @supplementalGroups, @fsGroup, @hostIPC, @hostNetwork, @runAsUser, @volumes, @seLinux, @defaultAddCapabilities, @requiredDropCapabilities, @readOnlyRootFilesystem, @privileged, @hostPID {
     /**AllowedCapabilities is a list of capabilities that can be requested to add to the container.
      Capabilities in this field may be added at the pod author's discretion. You must not list
      a capability in both AllowedCapabilities and RequiredDropCapabilities.*/
     allowedCapabilities = null,
     /**hostPorts determines which host port ranges are allowed to be exposed.*/
     hostPorts = null,
     /**hostIPC determines if the policy allows the use of HostIPC in the pod spec.*/
     hostIPC = null,
     /**hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.*/
     hostNetwork = null,
     /**volumes is a white list of allowed volume plugins.  Empty indicates that all plugins may
      be used.*/
     volumes = null,
     /**DefaultAddCapabilities is the default set of capabilities that will be added to the container
      unless the pod spec specifically drops the capability.  You may not list a capabiility
      in both DefaultAddCapabilities and RequiredDropCapabilities.*/
     defaultAddCapabilities = null,
     /**RequiredDropCapabilities are the capabilities that will be dropped from the container. 
      These are required to be dropped and cannot be added.*/
     requiredDropCapabilities = null,
     /**ReadOnlyRootFilesystem when set to true will force containers to run with a read only root
      file system.  If the container specifically requests to run with a non-read only root file
      system the PSP should deny the pod. If set to false the container may run with a read only
      root file system if it wishes but it will not be forced to.*/
     readOnlyRootFilesystem = null,
     /**privileged determines if a pod can request to be run as privileged.*/
     privileged = null,
     /**hostPID determines if the policy allows the use of HostPID in the pod spec.*/
     hostPID = null,
     /**SupplementalGroups is the strategy that will dictate what supplemental groups are used by
      the SecurityContext.*/
     SupplementalGroupsStrategyOptions "supplementalGroups" {}
     /**FSGroup is the strategy that will dictate what fs group is used by the SecurityContext.*/
     FSGroupStrategyOptions "fsGroup" {}
     /**runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.*/
     RunAsUserStrategyOptions "runAsUser" {}
     /**seLinux is the strategy that will dictate the allowable labels that may be set.*/
     SELinuxStrategyOptions "seLinux" {}
}