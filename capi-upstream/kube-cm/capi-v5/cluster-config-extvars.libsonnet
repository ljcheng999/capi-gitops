[
  //General
  {
    name: "accountId",
    value: "{{repository}}",
  },
  {
    name: "namespace",
    value: "{{repository}}",
  },
  {
    name: "clusterName",
    value: "{{path.basename}}",
  },
  // {
  //   name: "destinationServer",
  //   value: "{{server}}",
  // },

  //Cluster
  {
    name: "clusterConfig.amiType",
    value: "{{clusterConfig.amiType}}",
  },
  {
    name: "clusterConfig.diskSize",
    value: "{{clusterConfig.diskSize}}",
  },
  {
    name: "clusterConfig.systemNodeType",
    value: "{{clusterConfig.systemNodeType}}",
  },
  {
    name: "clusterConfig.systemNodeReplicas",
    value: "{{clusterConfig.systemNodeReplicas}}",
  },
  {
    name: "clusterConfig.systemNodeScaling.maxSize",
    value: "{{clusterConfig.systemNodeScaling.maxSize}}",
  },
  {
    name: "clusterConfig.systemNodeScaling.minSize",
    value: "{{clusterConfig.systemNodeScaling.minSize}}",
  },
  {
    name: "clusterConfig.userNodeType",
    value: "{{clusterConfig.userNodeType}}",
  },
  {
    name: "clusterConfig.userNodeReplicas",
    value: "{{clusterConfig.userNodeReplicas}}",
  },
  {
    name: "clusterConfig.userNodeScaling.maxSize",
    value: "{{clusterConfig.userNodeScaling.maxSize}}",
  },
  {
    name: "clusterConfig.userNodeScaling.minSize",
    value: "{{clusterConfig.userNodeScaling.minSize}}",
  },


    {
    name: "clusterConfig.authentication.iamRoles",
    value: "{{clusterConfig.authentication.iamRoles}}",
  },
  {
    name: "clusterConfig.authentication.keycloakGroups",
    value: "{{clusterConfig.authentication.keycloakGroups}}"
  },
  {
    name: "clusterConfig.customizations",
    value: "{{clusterConfig.customizations}}"
  },







  // //Application
  // {
  //   name: "application.path",
  //   value: "{{application.path}}",
  // },
  // {
  //   name: "application.repo",
  //   value: "{{application.repo}}",
  // },
  // {
  //   name: "application.targetRevision",
  //   value: "{{application.targetRevision}}",
  // },

  

  // //Datadog
  // {
  //   name: "datadog",
  //   value: "{{datadog}}",
  // },

  // // Rancher
  // {
  //   name: "rancher",
  //   value: "{{rancher}}",
  // },

  // //Splunk
  // {
  //   name: "splunk.host",
  //   value: "{{splunk.host}}",
  // },
  // {
  //   name: "splunk.index",
  //   value: "{{splunk.index}}",
  // },

  // //Template
  // {
  //   name: "clusterTemplatePath",
  //   value: "{{clusterTemplatePath}}",
  // },
  // {
  //   name: "template",
  //   value: "{{template}}",
  // },

  // //Bootstrap Applications - type
  // {
  //   name: "type",
  //   value: "{{type}}",
  // },

  // //Ingress & Networking
  // {
  //   name: "ingress",
  //   value: "{{ingress}}",
  // },
  // {
  //   name: "ingress",
  //   value: "{{ingress}}",
  // },
  // {
  //   name: "networking.vpc.id",
  //   value: "{{networking.vpc.id}}",
  // },
  // {
  //   name: "networking.vpc.publicSubnets",
  //   value: "{{networking.vpc.publicSubnets}}",
  // },
  // {
  //   name: "networking.vpc.privateSubnets",
  //   value: "{{networking.vpc.privateSubnets}}",
  // },
  // {
  //   name: "networking.vpc.localSubnets",
  //   value: "{{networking.vpc.localSubnets}}",
  // },
  // {
  //   name: "networking.vpc.additionalSecurityGroups",
  //   value: "{{networking.vpc.additionalSecurityGroups}}",
  // },
  // {
  //   name: "networking.loadBalancer.waf",
  //   value: "{{networking.loadBalancer.waf}}",
  // },
  // {
  //   name: "networking.loadBalancer.certificate",
  //   value: "{{networking.loadBalancer.certificate}}",
  // },
  // {
  //   name: "networking.loadBalancer.securityGroup",
  //   value: "{{networking.loadBalancer.securityGroup}}",
  // },
  // {
  //   name: "networking.argocd.waf",
  //   value: "{{networking.argocd.waf}}",
  // },
  // {
  //   name: "networking.argocd.certificate",
  //   value: "{{networking.argocd.certificate}}",
  // },
  // {
  //   name: "networking.argocd.securityGroup",
  //   value: "{{networking.argocd.securityGroup}}",
  // },
]
