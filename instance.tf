resource "aws_instance" "HossamEC2" {
  ami           = var.ami_id
  instance_type = var.ec2_type
  vpc_security_group_ids = [ aws_security_group.HossamSecGrp.id ]
  key_name = var.key_pair_name

  tags = {
    Name = var.ec2_name
  }
}

output "instance_ip_addr_public" {
  value       = aws_instance.HossamEC2.public_ip
  description = "public IP address of the EC2"
}