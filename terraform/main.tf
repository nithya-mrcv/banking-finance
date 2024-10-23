resource "aws_instance" "production" {
  ami                    = "ami-0e86e20dae9224db8"
  key_name               = "jenkin"
  vpc_security_group_ids = ["sg-0b16f3692a548fa2d"]  # Directly use the security group ID
  instance_type          = "t2.micro"
  count                  = 1
  tags = {
    Name = "production"
  }
}

resource "aws_instance" "grafana" {
  ami                    = "ami-0e86e20dae9224db8"
  key_name               = "jenkin"
  vpc_security_group_ids = ["sg-0b16f3692a548fa2d"]  # Directly use the security group ID
  instance_type          = "t2.micro"
  count                  = 1
  tags = {
    Name = "prometheus"
  }
}
