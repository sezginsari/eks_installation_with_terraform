variable "region" {
    default = "us-east-1"
    description = "AWS region"
  
}

variable "cluster_name" {
    default = "eks-poc"
  
}

variable "map_accounts" {
    description = "Account number to add Aws-auth configmap."
    type = list(string)
  
  default = [ "111111111111", "222222222222" ]
}

variable "map_roles" {
    description = "Account number to add Aws-auth configmap."
    type = list(object({
        rolearn = string
        username = string
        group = list(string)
    }))
    default = [ {
      rolearn = "arn:aws:iam::66666666666:role/role1"
      username = "role1"
      group = ["system:masters"]
    }
     ]
}

variable "map_users" {
    description = "Account number to add Aws-auth configmap."
    type = list(object({
        rolearn = string
        username = string
        group = list(string)
    }))
    default = [ {
      rolearn = "arn:aws:iam::66666666666:user/user1"
      username = "role1"
      group = ["system:masters"]
    },
    {
      rolearn = "arn:aws:iam::66666666666:user/user2"
      username = "role1"
      group = ["system:masters"] 
    }
     ]
}