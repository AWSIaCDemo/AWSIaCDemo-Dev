# Environment
environment = "dev"
# VPC Variables
vpc_name = "devvpc"
devvpc_cidr_block = "10.0.0.0/16"
devvpc_availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
devvpc_public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
devvpc_private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
devvpc_database_subnets= ["10.0.151.0/24", "10.0.152.0/24", "10.0.153.0/24"]
devvpc_create_database_subnet_group = true 
devvpc_create_database_subnet_route_table = true   
devvpc_enable_nat_gateway = true  
devvpc_single_nat_gateway = true

# EC2 Instance Variables
instance_type = "t3.micro"
instance_keypair = "terraform-key"
private_instance_count = 2

# DNS Name
#dns_name = "devdemo5.devopsinccloud.com"

