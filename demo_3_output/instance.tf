resource "aws_instance" "SKV-terraform-demo3" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.SKV-terraform-demo3.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.SKV-terraform-demo3.public_ip
}

