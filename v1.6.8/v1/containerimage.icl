/**Describe a container image*/
::orch "kubernetes" "ContainerImage" as ContainerImage @sizeBytes, @names {
     /**The size of the image in bytes.*/
     sizeBytes = null,
     /**Names by which this image is known. e.g. ["gcr.io/google_containers/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]*/
     names = null
}