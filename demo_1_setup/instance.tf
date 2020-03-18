resource "aws_instance" "SKV-terraform-demo1" {
  ami           = "ami-b70554c8"
  instance_type = "t2.micro"
}

