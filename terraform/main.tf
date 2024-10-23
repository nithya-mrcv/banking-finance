resource "aws_instance" "jenkins-terraform" {
  ami             = "ami-0e86e20dae9224db8"
  key_name        = "jenkin"
  security_groups = ["sg-0b16f3692a548fa2d"]  # Updated to use the new security group ID
  instance_type   = "t2.micro"
  count           = 1
  tags = {
    Name = "production"
  }
}

resource "aws_instance" "pg" {
  ami             = "ami-0e86e20dae9224db8"
  key_name        = "jenkin"
  security_groups = ["sg-0b16f3692a548fa2d"]  # Updated to use the new security group ID
  instance_type   = "t2.micro"
  count           = 1
  tags = {
    Name = "prometheusgrafana"
  }
}

