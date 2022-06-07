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



To create and configure EKS cluster, using terraform modules. We have only one main.tf file for all configuration. You can split the main.tf file to different .tf files like vpc.tf, eks.tf etc. To run main.tf, should install terraform and git as well (if you do not install git package, you will get errors. ) After complete this installation, you should these commands step by step.

•	terraform init 

•	terraform plan

•	terraform apply


When the terraform apply command finish successfully, your cluster and resources will be ready to use.


<img width="902" alt="aws_eks" src="https://user-images.githubusercontent.com/100922989/172482921-155cfcbc-7683-48d7-8a45-64c2f3c9026d.png">


<img width="938" alt="ec2" src="https://user-images.githubusercontent.com/100922989/172482975-7142dc50-be75-4325-9ede-fdf36fb82dcc.png">


If you do not want to use these resources any more, use can use terraform apply -destroy command to delete them. 


References

https://aws.amazon.com/eks/ 

https://aws.github.io/aws-eks-best-practices

https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/18.23.0 

https://github.com/hashicorp/learn-terraform-provision-eks-cluster 

