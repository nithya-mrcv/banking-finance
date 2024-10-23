resource "aws_instance" "jenkins-terraform" {
  ami             = "ami-0e86e20dae9224db8"
  key_name        = "Nithya"
  security_groups = ["proj-bank"] 
  instance_type   = "t2.micro"
  count           = 1
  tags = {
    Name = "jenkins-terraform"
  }
}
