local clusterConfigExtvars = import 'cluster-config-extvars.libsonnet';
[
  {
    apiVersion: "argoproj.io/v1alpha1",
    kind: "ApplicationSet",
    metadata: {
      name: "capi-kube-cm-clusters",
      namespace: "argocd",
      finalizers: ["resources-finalizer.argocd.argoproj.io",],
      labels: {
        "clusters.capi.kubesources.com/resource": "capi-kube-cm-clusters",
      }
    },
    spec: {
      goTemplate: true,
      goTemplateOptions: ['missingkey=error'],
      generators: [
        {
          matrix: {
            generators: [
              {
                scmProvider: {
                  cloneProtocol: "https",
                  gitlab: {
                    group: "109385893",
                    api: "https://gitlab.com",
                    allBranches: false,
                    includeSubgroups: true,
                    tokenRef: {
                      secretName: "cluster-manager-gitlab-es",
                      key: "password",
                    },
                  },
                },
              },
              {
                git: {
                  repoURL: "https://gitlab.com/jcheng-tech-919/capi-cluster-catalogs/{{ .repository }}.git",
                  // repoURL: "https://gitlab.com/jcheng-tech-919/capi-cluster-catalogs/aws-022985595394-downstream.git",
                  revision: "HEAD",
                  files: [
                    {
                      // path: "clusters/ljc/**/config.yaml",
                      path: "clusters/" + std.extVar("clusterManagementGroup") + "/**/config.yaml",
                    },
                  ],
                },
              },
            ],
          },
        },
      ],
      template: {
        metadata: {
          name: '{{ .path.basename }}',
          namespace: '{{ .repository }}',
          labels: {
            'cluster.capi.spectrum.com/accountId': '{{ .values.awsAccountId }}',
            'cluster.capi.spectrum.com/name': '{{ .path.basename }}',
          },
        },
        spec: {
          destination: {
            namespace: '{{ .repository }}',
            server: 'https://kubernetes.default.svc',
          },
          project: '{{ .repository }}',
          revisionHistoryLimit: 10,
          source: {
            directory: {
              jsonnet: {
                extVars: clusterConfigExtvars,
              },
            },
            path: 'clusterTemplates/{{ .clusterTemplate.capiVersion }}/{{ .clusterTemplate.version }}',
            repoURL: "https://gitlab.com/jcheng-tech-919/capi-cluster-catalogs/aws-022985595394-downstream.git",
            targetRevision: "HEAD",
          },
          syncPolicy: {
            retry: {
              backoff: {
                duration: "5s",
              },
              limit: 5,
            },
            syncOptions: [
              "CreateNamespace=true",
              "PreserveResourcesOnDeletion=true",
              "ApplicationsSync=create-update",
              "PrunePropagationPolicy=orphan",
            ],
          },
        },
      },
      syncPolicy: {
        applicationsSync: "create-update",
        preserveResourcesOnDeletion: true,
      },
    },
  },
]