resource "aws_instance" "SKV-terraform-demo2" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}

