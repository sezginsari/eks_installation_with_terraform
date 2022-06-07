# eks_installation_with_terraform
 
This repository holds briefly explain what is EKS, how is working and installing with terraform for proof of concept (POC) purpose. You can find more details about EKS and terraform at reference documents.

EKS  (Elastic Kubernetes Service) is a managed Kubernetes service offered by AWS. EKS automatically manages the availability and scalability of the Kubernetes control plane nodes responsible for scheduling containers, managing application availability, storing cluster data, and other key tasks.

Kubernetes and also EKS consist of two main concept, call master node and worker node. On EKS master nodes managed by AWS.  With EKS, AWS offers us to manage the Kubernetes master servers on three different availability zones. For worker nodes, you can use EC2 instances as well as on – prem servers.  If you want to create EKS without terraform, basically follow these steps:

•	Need an AWS account. 

•	Provision an EKS on the AWS account.

•	After created EKS cluster, deploy worker nodes on EC2 instances.

•	Connect the EC2 worker nodes 

In our scenario, we install EKS cluster with two worker nodes running on EC2.


<img width="576" alt="eks" src="https://user-images.githubusercontent.com/100922989/172477591-94a8d0fd-9eba-41be-b40f-8f62171f3855.png">


