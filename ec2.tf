resource "aws_instance" "web" {
  ami                         = var.amis
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "Ubuntu-Instance"
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = [aws_security_group.allow_all.id]
  tags = {
    Name = "Server-1"
  }
  user_data = <<EOF
#!/bin/bash
apt-get -y update
apt-get -y install nginx
service nginx start
echo fin v1.00!
EOF
}