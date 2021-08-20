provider "aws" {
  region                  = "ap-southeast-1"
  shared_credentials_file = "C:\\Users\\user1\\.aws\\credentials"
  profile                 = "TestAWS"
}

module "ECS_Container" {
  source               = "./ALB_ECS" #Do not change this as this is the module name
  Project_Name         = "ECSDemo"
  VPC_CIDR             = "10.10.10.0/24"
  PublicSubnet_CIDR1   = "10.10.10.128/26"
  PublicSubnet_CIDR2   = "10.10.10.64/26"
  PrivateSubnet_CIDR1  = "10.10.10.0/26"
  PrivateSubnet_CIDR2  = "10.10.10.192/26"
  Public_AZ1           = "ap-southeast-1a"
  Public_AZ2           = "ap-southeast-1b"
  Private_AZ1          = "ap-southeast-1c"
  Private_AZ4          = "ap-southeast-1b"
  Container_Definition = "./container.json"
  Container_Name       = "sample-web-app"
}

output "ALB_DNS_Address" {
  value = module.ECS_Container.ALB_Address
}