resource "null_resource" "cluster" {

  depends_on = [module.public_bastion]

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("ec2instance.pem")
    host        = aws_eip.public_bastion.public_ip
  }

  provisioner "file" {
    source      = "ec2instance.pem"
    destination = "/tmp/ec2instance.pem"
  }

  provisioner "remote-exec" {

    inline = [
      
      "sudo chmod 400 /tmp/ec2instance.pem"
      
      ]

  }

  provisioner "local-exec" {
    command = "echo VPC has creaeted on `date` and vpc ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
    working_dir = "local-exec-output-files/"
  }



}