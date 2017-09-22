take ../v1/selinuxoptions

/**SELinux  Strategy Options defines the strategy type and any options used to create the strategy.*/
::orch "kubernetes" "SELinuxStrategyOptions" as SELinuxStrategyOptions @seLinuxOptions, @rule {
     /**type is the strategy that will dictate the allowable labels that may be set.*/
     rule = null,
     /**seLinuxOptions required to run as; required for MustRunAs More info: https://git.k8s.io/community/contributors/design-proposals/security_context.md*/
     SELinuxOptions "seLinuxOptions" {}
}