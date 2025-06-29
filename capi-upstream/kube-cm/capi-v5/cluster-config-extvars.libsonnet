
[
  //General
  {
    name: 'awsAccountId',
    value: '{{ .values.awsAccountId }}',
  },
  {
    name: 'awsRegion',
    value: '{{ .aws.region | default "us-east-1" }}',
  },
  {
    name: 'awsAvailabilityZones',
    value: '{{ .aws.availabilityZones }}',
  },
  {
    name: "awsVpcId",
    value: '{{ .aws.networking.vpcId }}',
  },
  {
    name: "awsPublicSubnets",
    value: '{{ .aws.networking.publicSubnets }}',
  },
  {
    name: "awsPrivateSubnets",
    value: '{{ .aws.networking.privateSubnets }}',
  },
  {
    name: "awsIntraSubnets",
    value: '{{ .aws.networking.intraSubnets }}',
  },
  {
    name: 'clusterName',
    value: '{{ .path.basename }}', //'{{path[2]}}'
  },
  {
    name: 'downstreamNamespace',
    value: '{{ .repository }}',
  },
  {
    name: 'capaIrsaServiceAccountName',
    value: 'capa-cluster-irsa-init',
  },
  // EKS Access Entry
  {
    name: 'AmazonEKSClusterAdminPolicy'
    value: 'AmazonEKSClusterAdminPolicy',
  },
    // Cluster Template
  {
    name: 'ljcClusterFolderName',
    value: '{{ index .path.segments 1 }}', //'{{path[1]}}',
  },
  {
    name: 'clusterTemplateCapiVersion',
    value: '{{ .clusterTemplate.capiVersion }}',
  },
  {
    name: 'clusterTemplateVersion',
    value: '{{ .clusterTemplate.version }}',
  },
  // ClusterConfig
  {
    name: 'clusterPublicAccess',
    value: '{{ .clusterConfig.endpointAccess.public }}',
  },
  {
    name: 'clusterPublicAccessCidrs',
    value: '{{ .clusterConfig.endpointAccess.publicCIDRs }}',
  },
  {
    name: 'clusterAdditionalSecurityGroup',
    value: '{{ .clusterConfig.additionalSecurityGroup }}',
  },
  {
    name: 'clusterAdminRoleNames',
    value: '{{ .clusterConfig.adminAccessRoleNames }}',
  },
  {
    name: 'clusterAdditionalTagsApp',
    value: '{{ .clusterConfig.additionalTags.application | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsGroup',
    value: '{{ .clusterConfig.additionalTags.group | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsOrg',
    value: '{{ .clusterConfig.additionalTags.organization | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsStack',
    value: '{{ .clusterConfig.additionalTags.stack | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsTeam',
    value: '{{ .clusterConfig.additionalTags.team | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsEmail',
    value: '{{ .clusterConfig.additionalTags.email | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsVpEmail',
    value: '{{ .clusterConfig.additionalTags.vpEmail | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsAppId',
    value: '{{ .clusterConfig.additionalTags.app_id | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsAppRefId',
    value: '{{ .clusterConfig.additionalTags.app_ref_id | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsCostCode',
    value: '{{ .clusterConfig.additionalTags.cost_code | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsDataPriv',
    value: '{{ .clusterConfig.additionalTags.data_priv | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsOpsOwner',
    value: '{{ .clusterConfig.additionalTags.ops_owner | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsSecOwner',
    value: '{{ .clusterConfig.additionalTags.sec_owner | default "" }}',
  },
  {
    name: 'clusterAdditionalTagsDevOwner',
    value: '{{ .clusterConfig.additionalTags.dev_owner | default "" }}',
  },
  // ClusterConfig Node groups
  {
    name: 'additionalNodePolicies',
    value: '{{ .clusterConfig.additionalNodePolicies }}',
  },
  {
    name: 'clusterSystemNodeType',
    value: '{{ .clusterConfig.systemNode.type }}',
  },
  {
    name: 'clusterSystemNodeReplicas',
    value: '{{ .clusterConfig.systemNode.replicas | default 1 }}',
  },


 

  //   //Cluster
  // {
  //   name: 'cluster.amiType',
  //   value: '{{cluster.amiType}}',
  // },
  // {
  //   name: 'cluster.diskSize',
  //   value: '{{cluster.diskSize}}',
  // },
  // {
  //   name: 'cluster.systemNodeType',
  //   value: '{{cluster.systemNodeType}}',
  // },
  // {
  //   name: 'cluster.systemNodeReplicas',
  //   value: '{{cluster.systemNodeReplicas}}',
  // },
  // {
  //   name: 'cluster.userNodeType',
  //   value: '{{cluster.systemNodeType}}',
  // },
  // {
  //   name: 'cluster.userNodeReplicas',
  //   value: '{{cluster.userNodeReplicas}}',
  // },
  // {
  //   name: 'cluster.userNodeScaling.minSize',
  //   value: '{{cluster.userNodeScaling.minSize}}',
  // },
  // {
  //   name: 'cluster.userNodeScaling.maxSize',
  //   value: '{{cluster.userNodeScaling.maxSize}}',
  // },
 
  // {
  //   name: 'cluster.instanceType',
  //   value: '{{cluster.instanceType}}',
  // },
  // {
  //   name: 'cluster.replicas',
  //   value: '{{cluster.replicas}}',
  // },
  // {
  //   name: 'cluster.scaling.maxSize',
  //   value: '{{cluster.scaling.maxSize}}',
  // },
  // {
  //   name: 'cluster.scaling.minSize',
  //   value: '{{cluster.scaling.minSize}}',
  // },
  // {
  //   name: 'cluster.authentication.iamRoles',
  //   value: '{{cluster.authentication.iamRoles}}',
  // },
  // {
  //   name: 'cluster.authentication.keycloakGroups',
  //   value: '{{cluster.authentication.keycloakGroups}}'
  // },
  // {
  //   name: 'cluster.customizations',
  //   value: '{{cluster.customizations}}'
  // },
 
  //Application
  // {
  //   name: 'application.path',
  //   value: '{{application.path}}',
  // },
  // {
  //   name: 'application.repo',
  //   value: '{{application.repo}}',
  // },
  // {
  //   name: 'application.targetRevision',
  //   value: '{{application.targetRevision}}',
  // },
 
  //Datadog
  // {
  //   name: 'datadog',
  //   value: '{{datadog}}',
  // },
 
  // // Rancher
  // {
  //   name: 'rancher',
  //   value: '{{rancher}}',
  // },
 
  // //Splunk
  // {
  //   name: 'splunk.host',
  //   value: '{{splunk.host}}',
  // },
  // {
  //   name: 'splunk.index',
  //   value: '{{splunk.index}}',
  // },
 
  // //Bootstrap Applications - type
  // {
  //   name: 'type',
  //   value: '{{type}}',
  // },
 
  // //Ingress & Networking
  // {
  //   name: 'ingress',
  //   value: '{{ingress}}',
  // },
  // {
  //   name: 'ingress',
  //   value: '{{ingress}}',
  // },
  // {
  //   name: 'networking.vpc.id',
  //   value: '{{networking.vpc.id}}',
  // },
  // {
  //   name: 'networking.vpc.publicSubnets',
  //   value: '{{networking.vpc.publicSubnets}}',
  // },
  // {
  //   name: 'networking.vpc.privateSubnets',
  //   value: '{{networking.vpc.privateSubnets}}',
  // },
  // {
  //   name: 'networking.vpc.localSubnets',
  //   value: '{{networking.vpc.localSubnets}}',
  // },
  // {
  //   name: 'networking.vpc.additionalSecurityGroups',
  //   value: '{{networking.vpc.additionalSecurityGroups}}',
  // },
  // {
  //   name: 'networking.loadBalancer.waf',
  //   value: '{{networking.loadBalancer.waf}}',
  // },
  // {
  //   name: 'networking.loadBalancer.certificate',
  //   value: '{{networking.loadBalancer.certificate}}',
  // },
  // {
  //   name: 'networking.loadBalancer.securityGroup',
  //   value: '{{networking.loadBalancer.securityGroup}}',
  // },
  // {
  //   name: 'networking.argocd.waf',
  //   value: '{{networking.argocd.waf}}',
  // },
  // {
  //   name: 'networking.argocd.certificate',
  //   value: '{{networking.argocd.certificate}}',
  // },
  // {
  //   name: 'networking.argocd.securityGroup',
  //   value: '{{networking.argocd.securityGroup}}',
  // },
]