[
  //General
  {
    name: "account",
    value: "{{repository}}",
  },
  {
    name: "namespace",
    value: "{{repository}}",
  },
  {
    name: "clusterName",
    value: "{{path.basename}}",
    // value: "{{name}}",
  },
  {
    name: "destinationServer",
    value: "{{server}}",
  },

  //Cluster
  {
    name: "cluster.amiType",
    value: "{{cluster.amiType}}",
  },
  {
    name: "cluster.diskSize",
    value: "{{cluster.diskSize}}",
  },
  {
    name: "cluster.systemNodeType",
    value: "{{cluster.systemNodeType}}",
  },
  {
    name: "cluster.systemNodeReplicas",
    value: "{{cluster.systemNodeReplicas}}",
  },
  {
    name: "cluster.systemNodeScaling.maxSize",
    value: "{{cluster.systemNodeScaling.maxSize}}",
  },
  {
    name: "cluster.systemNodeScaling.minSize",
    value: "{{cluster.systemNodeScaling.minSize}}",
  },
  {
    name: "cluster.userNodeType",
    value: "{{cluster.userNodeType}}",
  },
  {
    name: "cluster.userNodeReplicas",
    value: "{{cluster.userNodeReplicas}}",
  },
  {
    name: "cluster.userNodeScaling.maxSize",
    value: "{{cluster.userNodeScaling.maxSize}}",
  },
  {
    name: "cluster.userNodeScaling.minSize",
    value: "{{cluster.userNodeScaling.minSize}}",
  },


    {
    name: "cluster.authentication.iamRoles",
    value: "{{cluster.authentication.iamRoles}}",
  },
  {
    name: "cluster.authentication.keycloakGroups",
    value: "{{cluster.authentication.keycloakGroups}}"
  },
  {
    name: "cluster.customizations",
    value: "{{cluster.customizations}}"
  },



  // {
  //   name: "cluster.tags.application",
  //   value: "{{cluster.tags.application}}",
  // },
  // {
  //   name: "cluster.tags.group",
  //   value: "{{cluster.tags.group}}",
  // },
  // {
  //   name: "cluster.tags.organization",
  //   value: "{{cluster.tags.organization}}",
  // },
  // {
  //   name: "cluster.tags.stack",
  //   value: "{{cluster.tags.stack}}",
  // },
  // {
  //   name: "cluster.tags.team",
  //   value: "{{cluster.tags.team}}",
  // },
  // {
  //   name: "cluster.tags.email",
  //   value: "{{cluster.tags.email}}",
  // },
  // {
  //   name: "cluster.tags.vpEmail",
  //   value: "{{cluster.tags.vpEmail}}",
  // },

  


  //Application
  {
    name: "application.path",
    value: "{{application.path}}",
  },
  {
    name: "application.repo",
    value: "{{application.repo}}",
  },
  {
    name: "application.targetRevision",
    value: "{{application.targetRevision}}",
  },

  

  //Datadog
  {
    name: "datadog",
    value: "{{datadog}}",
  },

  // Rancher
  {
    name: "rancher",
    value: "{{rancher}}",
  },

  //Splunk
  {
    name: "splunk.host",
    value: "{{splunk.host}}",
  },
  {
    name: "splunk.index",
    value: "{{splunk.index}}",
  },

  //Template
  {
    name: "template",
    value: "{{template}}",
  },

  //Bootstrap Applications - type
  {
    name: "type",
    value: "{{type}}",
  },

  //Ingress & Networking
  {
    name: "ingress",
    value: "{{ingress}}",
  },
  {
    name: "ingress",
    value: "{{ingress}}",
  },
  {
    name: "networking.vpc.id",
    value: "{{networking.vpc.id}}",
  },
  {
    name: "networking.vpc.publicSubnets",
    value: "{{networking.vpc.publicSubnets}}",
  },
  {
    name: "networking.vpc.privateSubnets",
    value: "{{networking.vpc.privateSubnets}}",
  },
  {
    name: "networking.vpc.localSubnets",
    value: "{{networking.vpc.localSubnets}}",
  },
  {
    name: "networking.vpc.additionalSecurityGroups",
    value: "{{networking.vpc.additionalSecurityGroups}}",
  },
  {
    name: "networking.loadBalancer.waf",
    value: "{{networking.loadBalancer.waf}}",
  },
  {
    name: "networking.loadBalancer.certificate",
    value: "{{networking.loadBalancer.certificate}}",
  },
  {
    name: "networking.loadBalancer.securityGroup",
    value: "{{networking.loadBalancer.securityGroup}}",
  },
  {
    name: "networking.argocd.waf",
    value: "{{networking.argocd.waf}}",
  },
  {
    name: "networking.argocd.certificate",
    value: "{{networking.argocd.certificate}}",
  },
  {
    name: "networking.argocd.securityGroup",
    value: "{{networking.argocd.securityGroup}}",
  },
]
