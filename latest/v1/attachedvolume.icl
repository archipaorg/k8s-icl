/**AttachedVolume describes a volume attached to a node*/
::orch "kubernetes" "AttachedVolume" as AttachedVolume @devicePath, @name {
     /**DevicePath represents the device path where the volume should be available*/
     devicePath = null,
     /**Name of the attached volume*/
     name = null
}