module "public_bastion" {

  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"

  name = var.public_bastion

  ami = var.ami
  #availability_zone = module.vpc.azs[0]
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.bastion_sg.security_group_id]

}