take ../v1/podtemplatespec

/**JobSpec describes how the job execution will look like.*/
::orch "kubernetes" "JobSpec" as JobSpec @activeDeadlineSeconds, @completions, @autoSelector, @parallelism, @template, @selector {
     /**Optional duration in seconds relative to the startTime that the job may be active before
      the system tries to terminate it; value must be positive integer*/
     activeDeadlineSeconds = null,
     /**Completions specifies the desired number of successfully finished pods the job should be
      run with.  Setting to nil means that the success of any pod signals the success of all
      pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism
      is limited to 1 and the success of that pod signals the success of the job. More info:
      http://kubernetes.io/docs/user-guide/jobs*/
     completions = null,
     /**AutoSelector controls generation of pod labels and pod selectors. It was not present in
      the original extensions/v1beta1 Job definition, but exists to allow conversion from batch/v1
      Jobs, where it corresponds to, but has the opposite meaning as, ManualSelector. More info:
      http://releases.k8s.io/HEAD/docs/design/selector-generation.md*/
     autoSelector = null,
     /**Parallelism specifies the maximum desired number of pods the job should run at any given
      time. The actual number of pods running in steady state will be less than this number when
      ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left
      to do is less than max parallelism. More info: http://kubernetes.io/docs/user-guide/jobs*/
     parallelism = null,
     /**Template is the object that describes the pod that will be created when executing a job.
      More info: http://kubernetes.io/docs/user-guide/jobs*/
     PodTemplateSpec "template" {}
}