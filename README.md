# Kubernetes ICL Templates
While rewriting our k8s YAML files in ICL, we wanted to make it easier 
for everyone to write self-documented configuration files, files that exposes all the expected fields, what are they for ? and make it crystal clear for everyone what we are doing in our configuration files. 
Thanks to the work already done by @garethr we could write easily this simple program that generates k8s ICL templates right from kurberntes json schemas

## Usage 
All k8s ICL templates are written as mixins, this is for 2 main reasons : 
* Readability : all the expected parameters are available and documented
* Easy to use : you just have to call the mixins and apply the necessary arguments and it's done.

Here is an example of the "Deployment" template

	take deploymentstatus,
	     deploymentspec,
	     ../v1/objectmeta
	
	/**Deployment enables declarative updates for Pods and ReplicaSets.*/
	::orch "kubernetes" "Deployment" as Deployment {
	     /**Kind is a string value representing the REST resource this object represents. Servers may
	      infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
	      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds*/
	     kind = "Deployment",
	     /**APIVersion defines the versioned schema of this representation of an object. Servers should
	      convert recognized schemas to the latest internal value, and may reject unrecognized values.
	      More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources*/
	     apiVersion = "v1beta1",
	     /**Most recently observed status of the Deployment.*/
	     DeploymentStatus "status" {}
	     /**Specification of the desired behavior of the Deployment.*/
	     DeploymentSpec "spec" {}
	     /**Standard object metadata.*/
	     ObjectMeta "metadata" {}
	}

And here is how you can call it 

	take github.com/k8s-icl/latest/v1beta1/deployment,
		     github.com/k8s-icl/latest/v1/containerport,
		     github.com/k8s-icl/latest/v1/container
	
	::variable "container-port" apply ContainerPort @@name="nginx", @@containerPort="8080"
	::variable "container-ports" [variable.container-port]
	::variable "container" apply Container @@image="nginx:1.13.0", @@name="nginx", @@ports=variable.container-ports
	::variable "container-list" [variable.container]
	::variable "pod-spec" apply PodSpec @@containers=variable.container-list
	::variable "labels" table "app" = "nginx"
	::variable "pod-metadata" apply ObjectMeta @@labels=variable.labels
	::variable "template" apply PodTemplateSpec @@spec=variable.pod-spec, @@metadata=variable.pod-metadata
	::variable "spec" apply DeploymentSpec @@replicas=5, @@template=variable.template
	::variable "metadata" apply ObjectMeta @@name = "nginx"
	
	_ "_" apply Deployment @@metadata=variable.metadata, @@spec=variable.spec

## Generating the templates yourself
You can use the already generated templates directly, but if you want to regenerate them, you just have to perform a `npm start`, the program will fetch all the kubernetes schemas for the different versions and regenerate ICLs templates.
