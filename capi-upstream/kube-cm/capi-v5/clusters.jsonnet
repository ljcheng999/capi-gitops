local clusterConfigExtVars = import "cluster-config-extvars.libsonnet";
[
  {
    apiVersion: "argoproj.io/v1alpha1",
    kind: "ApplicationSet",
    metadata: {
      name: "capi-kube-cm-clusters",
      namespace: "argocd",
      finalizers: [
        "resources-finalizer.argocd.argoproj.io",
      ],
      labels: {
        "clusters.capi.kubesources.com/resource": "capi-kube-cm",
      }
    },
    spec: {
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
                  repoURL: "https://gitlab.com/jcheng-tech-919/capi-cluster-catalogs/{{repository}}.git",
                  revision: "HEAD",
                  files: [
                    {
                      path: "clusters/" + std.extVar("clusterManagementGroup") + "/**/config.yaml",
                    },
                  ],
                },
              },
              // {
              //   scmProvider: {
              //     cloneProvider: "https",
              //     github: {
              //       organization: "capi-cluster-catalogs",
              //       api: "https://github.com/",
              //       allBranches: false,
              //       includeSubgroups: true,
              //       # A Secret name and key containing the GitHub access token to use for requests.
              //       # If not specified, will make anonymous requests which have a lower rate limit and can only see public repositories.
              //       tokenRef: {
              //         secretName: "",
              //         key: "password",
              //       },
              //       # A Secret name containing a GitHub App secret in repo-creds format.
              //       appSecretName: gh-app-repo-creds
              //     },
              //   },
              // },
              // {
              //   git: {
              //     repoUrl: "https://gitlab.com/jcheng-tech-919/capi-cluster-catalogs/{{repository}}.git"
              //     revision: "HEAD",
              //     files: [
              //       {
              //         path: "clusters/" + std.extVar("clusterManagementGroup") + "/**/config.yaml"
              //       },
              //     ],
              //   },
              // },
            ],
          },
        },
      ],
      template: {
        metadata: {
          name: "{{path.basename}}",
          namespace: "{{repository}}",
          labels: {
            "clusters.capi.kubesources.com/accountName": "{{repository}}",
            "clusters.capi.kubesources.com/name": "{{path.basename}}",
          },
        },
        spec: {
          destination: {
            namespace: "{{repository}}",
            server: "https://kubernetes.default.svc",
          },
          project: "{{repository}}",
          revisionHistoryLimit: 10,
          source: {
            directory: {
              jsonnet: {
                extVars: clusterConfigExtVars,
              },
            },
            path: "clusterTemplates/{{clusterTemplatePath}}",
            repoURL: "https://gitlab.com/jcheng-tech-919/capi-cluster-catalogs/{{repository}}.git",
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