resource "aws_eip" "public_bastion" {

  depends_on = [module.public_bastion, module.vpc]

  instance = module.public_bastion.id
  domain   = "vpc"

}