# VPC Input Variables

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type = string 
  default = "devvpc"
}

# VPC CIDR Block
variable "devvpc_cidr_block" {
  description = "DEVVPC CIDR Block"
  type = string 
  default = "10.0.0.0/16"
}

# VPC Availability Zones
variable "devvpc_availability_zones" {
  description = "DEVVPC Availability Zones"
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

# VPC Public Subnets
variable "devvpc_public_subnets" {
  description = "DEVVPC Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Private Subnets
variable "devvpc_private_subnets" {
  description = "DEVVPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Database Subnets
variable "devvpc_database_subnets" {
  description = "DEVVPC Database Subnets"
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Create Database Subnet Group (True / False)
variable "devvpc_create_database_subnet_group" {
  description = "DEVVPC Create Database Subnet Group"
  type = bool
  default = true 
}

# VPC Create Database Subnet Route Table (True or False)
variable "devvpc_create_database_subnet_route_table" {
  description = "DEVVPC Create Database Subnet Route Table"
  type = bool
  default = true   
}

  
# VPC Enable NAT Gateway (True or False) 
variable "devvpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Dev Private Subnets Outbound Communication"
  type = bool
  default = true  
}

# VPC Single NAT Gateway (True or False)
variable "devvpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway Dev in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}





