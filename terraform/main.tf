resource "aws_instance" "productionserver" {
  ami                    = "ami-0e86e20dae9224db8"
  key_name               = "jenkin"
  vpc_security_group_ids = ["sg-0b16f3692a548fa2d"]  # Directly use the security group ID
  instance_type          = "t2.micro"
  count                  = 1
  tags = {
    Name = "productionserver"
  }
}

resource "aws_instance" "grafanaserver" {
  ami                    = "ami-0e86e20dae9224db8"
  key_name               = "jenkin"
  vpc_security_group_ids = ["sg-0b16f3692a548fa2d"]  # Directly use the security group ID
  instance_type          = "t2.micro"
  count                  = 1
  tags = {
    Name = "prometheusserver"
  }
}
