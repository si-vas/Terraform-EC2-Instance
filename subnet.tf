resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr

  tags = {
    Name = "Terraform-Public-Subnet"
  }
}