take probe,
     lifecycle,
     securitycontext,
     probe,
     resourcerequirements

/**A single application container that you want to run within a pod.*/
::orch "kubernetes" "Container" as Container @livenessProbe, @terminationMessagePath, @workingDir, @image, @args, @volumeMounts, @tty, @lifecycle, @securityContext, @name, @stdin, @stdinOnce, @command, @env, @imagePullPolicy, @readinessProbe, @ports, @resources {
     /**Optional: Path at which the file to which the container's termination message will be written
      is mounted into the container's filesystem. Message written is intended to be brief final
      status, such as an assertion failure message. Defaults to /dev/termination-log. Cannot
      be updated.*/
     terminationMessagePath = null,
     /**Container's working directory. If not specified, the container runtime's default will be
      used, which might be configured in the container image. Cannot be updated.*/
     workingDir = null,
     /**Docker image name. More info: http://kubernetes.io/docs/user-guide/images*/
     image = null,
     /**Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable
      references $(VAR_NAME) are expanded using the container's environment. If a variable cannot
      be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax
      can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded,
      regardless of whether the variable exists or not. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/containers#containers-and-commands*/
     args = null,
     /**Pod volumes to mount into the container's filesystem. Cannot be updated.*/
     volumeMounts = null,
     /**Whether this container should allocate a TTY for itself, also requires 'stdin' to be true.
      Default is false.*/
     tty = null,
     /**Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique
      name (DNS_LABEL). Cannot be updated.*/
     name = null,
     /**Whether this container should allocate a buffer for stdin in the container runtime. If this
      is not set, reads from stdin in the container will always result in EOF. Default is false.*/
     stdin = null,
     /**Whether the container runtime should close the stdin channel after it has been opened by
      a single attach. When stdin is true the stdin stream will remain open across multiple attach
      sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until
      the first client attaches to stdin, and then remains open and accepts data until the client
      disconnects, at which time stdin is closed and remains closed until the container is restarted.
      If this flag is false, a container processes that reads from stdin will never receive an
      EOF. Default is false*/
     stdinOnce = null,
     /**Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if
      this is not provided. Variable references $(VAR_NAME) are expanded using the container's
      environment. If a variable cannot be resolved, the reference in the input string will be
      unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped
      references will never be expanded, regardless of whether the variable exists or not. Cannot
      be updated. More info: http://kubernetes.io/docs/user-guide/containers#containers-and-commands*/
     command = null,
     /**List of environment variables to set in the container. Cannot be updated.*/
     env = null,
     /**Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag
      is specified, or IfNotPresent otherwise. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/images#updating-images*/
     imagePullPolicy = null,
     /**List of ports to expose from the container. Exposing a port here gives the system additional
      information about the network connections a container uses, but is primarily informational.
      Not specifying a port here DOES NOT prevent that port from being exposed. Any port which
      is listening on the default "0.0.0.0" address inside a container will be accessible from
      the network. Cannot be updated.*/
     ports = null,
     /**Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot
      be updated. More info: http://kubernetes.io/docs/user-guide/pod-states#container-probes*/
     Probe "livenessProbe" {}
     /**Actions that the management system should take in response to container lifecycle events.
      Cannot be updated.*/
     Lifecycle "lifecycle" {}
     /**Security options the pod should run with. More info: http://releases.k8s.io/HEAD/docs/design/security_context.md*/
     SecurityContext "securityContext" {}
     /**Periodic probe of container service readiness. Container will be removed from service endpoints
      if the probe fails. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/pod-states#container-probes*/
     Probe "readinessProbe" {}
     /**Compute Resources required by this container. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#resources*/
     ResourceRequirements "resources" {}
}