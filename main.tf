provider "aws" {
  region = "us-west-2" # Specify your desired AWS region
}

module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-eks-cluster"
 #subnets         = ["subnet-a", "subnet-b", "subnet-c"] # Specify your subnet IDs)
  vpc_id          = "vpc-084d5180a36f03b5a | Default" # Specify your VPC ID
  cluster_version = "1.21" # Specify the desired Kubernetes version
}
