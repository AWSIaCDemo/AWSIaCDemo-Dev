# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  #version = "2.78.0"
  version = "3.0.0"

  # VPC Basic Details
  name = "${local.name}-${var.vpc_name}"
  cidr = var.devvpc_cidr_block
  azs             = var.devvpc_availability_zones
  public_subnets  = var.devvpc_public_subnets
  private_subnets = var.devvpc_private_subnets  

  # Database Subnets
  database_subnets = var.devvpc_database_subnets
  create_database_subnet_group = var.devvpc_create_database_subnet_group
  create_database_subnet_route_table = var.devvpc_create_database_subnet_route_table
  # create_database_internet_gateway_route = true
  # create_database_nat_gateway_route = true
  
  # NAT Gateways - Outbound Communication
  enable_nat_gateway = var.devvpc_enable_nat_gateway 
  single_nat_gateway = var.devvpc_single_nat_gateway

  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true


  tags = local.common_tags
  vpc_tags = local.common_tags

  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }  
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }
}