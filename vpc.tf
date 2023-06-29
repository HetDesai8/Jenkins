module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "prod-vpc"
  cidr = "11.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["11.0.1.0/24", "11.0.2.0/24"]
  public_subnets  = ["11.0.101.0/24", "11.0.102.0/24"]

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Environment = "prod"
  }

  igw_tags = {
    "Name" = "prod-igw"
  }

  public_route_table_tags = {
    "Name" = "prod-public-routetable"
  }
}




