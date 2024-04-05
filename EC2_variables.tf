variable "public_bastion" {

  type    = string
  default = "public_bastion"

}

variable "private_instance" {

  type    = string
  default = "private_instance"
}

variable "ami" {

  type    = string
  default = "ami-0c101f26f147fa7fd"
}

variable "instance_type" {

  type    = string
  default = "t2.micro"
}

variable "key_name" {

  type    = string
  default = "ec2instance"
}

variable "count_of_instance" {

  type    = number
  default = 2
}