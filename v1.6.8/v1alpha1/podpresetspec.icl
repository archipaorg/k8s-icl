/**PodPresetSpec is a description of a pod injection policy.*/
::orch "kubernetes" "PodPresetSpec" as PodPresetSpec @selector, @volumeMounts, @envFrom, @volumes, @env {
     /**VolumeMounts defines the collection of VolumeMount to inject into containers.*/
     volumeMounts = null,
     /**EnvFrom defines the collection of EnvFromSource to inject into containers.*/
     envFrom = null,
     /**Volumes defines the collection of Volume to inject into the pod.*/
     volumes = null,
     /**Env defines the collection of EnvVar to inject into containers.*/
     env = null
}