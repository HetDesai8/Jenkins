module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  count = 2

  name = "dev-instance-${count.index+1}"

  ami = "ami-05e411cf591b5c9f6"
  instance_type          = "t2.micro"
  key_name               = "het"
  vpc_security_group_ids = [aws_security_group.sg.id]
  subnet_id              = module.vpc.public_subnets[count.index]
  user_data = file("./user-data.sh")
  associate_public_ip_address = true

    ebs_block_device = [ {
    device_name = "/dev/sdh"
    volume_size = 2
  } ]


  tags = {
    Name   = "dev-${count.index+1}"
    Owner = "desaihet8@gmail.com"
  }
}