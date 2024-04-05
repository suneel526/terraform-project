module "private_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"
  count   = var.count_of_instance
  name    = var.private_instance
  ami     = var.ami
  # availability_zone = module.vpc.azs[1]
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = module.vpc.private_subnets[0]
  vpc_security_group_ids = [module.private_sg.security_group_id]

}