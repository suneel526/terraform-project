variable "vpc_name" {

  type    = string
  default = "My_vpc"
}

variable "vpc_cidr" {

  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_azs" {

  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public_sn" {

  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_private_sn" {

  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "vpc_database_sn" {
  type    = list(string)
  default = ["10.0.5.0/24", "10.0.6.0/24"]
}

variable "create_database_subnet_group" {
  type    = bool
  default = true
}

variable "create_database_subnet_route_table" {

  type    = bool
  default = true
}

variable "enable_nat_gateway" {
  type    = bool
  default = true
}

variable "single_nat_gateway" {
  type    = bool
  default = true

}

variable "enable_dns_hostnames" {

  type    = bool
  default = true

}

variable "enable_dns_support" {
  type    = bool
  default = true
}