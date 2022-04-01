resource "aws_key_pair" "HossamKeyPair" {
  key_name   = var.key_pair_name
  public_key = var.public_key_pair
}