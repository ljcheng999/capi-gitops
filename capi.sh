#!/bin/bash

########################################################################
##                  This is just an example
########################################################################


export AWS_REGION="us-east-1"


# Cluster API Provider for AWS ships with clusterawsadm, a utility to help you manage IAM objects for this project.
# The clusterawsadm binary uses your environment variables, 
# and encodes them in a value to be stored in a Kubernetes Secret of the Kind cluster to fetch necessary permissions to create the workload clusters.
clusterawsadm bootstrap iam create-cloudformation-stack --region ${AWS_REGION}

export AWS_B64ENCODED_CREDENTIALS=$(clusterawsadm bootstrap credentials encode-as-profile)


export EKS=true
export EXP_MACHINE_POOL=true #(For using managed node group, this should be enabled)
export CAPA_EKS_IAM=true


# To install the Cluster API components for AWS, we’ll use the kubeadm bootstrap provider, and the kubeadm control-plane provider,
# and transform the Kind cluster into a management cluster with the clusterctl init command.
clusterctl init --infrastructure aws


### Install ArgoCD in cluster manager
#kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

### local to go ro argocd
# kubectl port-forward svc/argocd-server 8080:80



export AWS_CONTROL_PLANE_MACHINE_TYPE="t3.large"
export AWS_NODE_MACHINE_TYPE="t3.large"

export AWS_SSH_KEY_NAME=capi-ec2 #(Given we are deploying the EC2 cluster and EKS cluster in different regions, this should be adjusted accordingly )
export AWS_REGION=us-east-1 #(This should be adjusted based on where you would like to create your clusters)

export K8S_VERSION="v1.32.0"
export CAPI_CONTROL_PLANE_MACHINE_COUNT="3"
export CAPI_WORKER_MACHINE_COUNT="3"

### For Argo CD to be authorized to manage Cluster API objects, we create a ClusterRoleBinding to associate necessary permissions to the service account assumed by Argo CD.
### For simplicity, let’s add the cluster-admin role to the argocd-application-controller ServiceAccount used by Argo CD.
kubectl apply -f ./roles/clusterrolebinding.yaml

clusterctl generate cluster capi-eks --flavor eks-managedmachinepool \
  --kubernetes-version ${K8S_VERSION} --worker-machine-count=${CAPI_WORKER_MACHINE_COUNT} > ./capi-cluster/eks-vpc/capi-eks.yaml


### Cleaning up
# 1. Delete the ArgoCD application
# kubectl delete -f capi-cluster/management/argocd-app.yaml
# 2. Delete the created clusters: 
# kubectl delete cluster <cluster_name> -n <target_namespace>
# 3. Delete the CloudFormation Stack when running clusterawsadm bootstrap command to create all necessary IAM resources:
# aws cloudformation delete-stack --stack-name cluster-api-provider-aws-sigs-k8s-io --region us-east-1


##### Reference:
### Check the cluster status
# kubectl get cluster -n aws-022985595394-capi-eks-vpc
# clusterctl describe cluster capi-eks -n aws-022985595394-capi-eks-vpc


