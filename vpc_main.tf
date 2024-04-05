module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.7.0"

  name                               = var.vpc_name
  cidr                               = var.vpc_cidr
  azs                                = var.vpc_azs
  private_subnets                    = var.vpc_private_sn
  public_subnets                     = var.vpc_public_sn
  database_subnets                   = var.vpc_database_sn
  create_database_subnet_group       = var.create_database_subnet_group
  create_database_subnet_route_table = var.create_database_subnet_route_table
  enable_nat_gateway                 = var.enable_nat_gateway
  single_nat_gateway                 = var.single_nat_gateway

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  public_subnet_tags = {

    name = "Public_subnet"

  }
  private_subnet_tags = {

    name = "private_subnet"
  }

  database_subnet_tags = {

    name = "database_subnet"

  }
}

