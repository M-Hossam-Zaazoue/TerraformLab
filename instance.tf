resource "aws_instance" "HossamEC2" {
  ami           = var.ami_id
  instance_type = var.ec2_type
  vpc_security_group_ids = [ aws_security_group.HossamSecGrp.id ]
  key_name = var.public_key_pair

  tags = {
    Name = var.ec2_name
  }
}