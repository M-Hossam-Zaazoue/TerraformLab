resource "aws_instance" "HossamEC2" {
  ami           = var.ami_id
  instance_type = var.ec2_type
  vpc_security_group_ids = [ aws_security_group.HossamSecGrp.id ]

  tags = {
    Name = "HossamEC2"
  }
}