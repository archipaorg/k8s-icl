/**SELinuxOptions are the labels to be applied to the container*/
::orch "kubernetes" "SELinuxOptions" as SELinuxOptions @role, @type, @user, @level {
     /**Role is a SELinux role label that applies to the container.*/
     role = null,
     /**Type is a SELinux type label that applies to the container.*/
     type = null,
     /**User is a SELinux user label that applies to the container.*/
     user = null,
     /**Level is SELinux level label that applies to the container.*/
     level = null
}