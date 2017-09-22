take ../v1/selinuxoptions

/**SELinux  Strategy Options defines the strategy type and any options used to create the strategy.*/
::orch "kubernetes" "SELinuxStrategyOptions" as SELinuxStrategyOptions @seLinuxOptions, @rule {
     /**type is the strategy that will dictate the allowable labels that may be set.*/
     rule = null,
     /**seLinuxOptions required to run as; required for MustRunAs More info: http://releases.k8s.io/HEAD/docs/design/security_context.md#security-context*/
     SELinuxOptions "seLinuxOptions" {}
}