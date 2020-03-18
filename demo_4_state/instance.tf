resource "aws_instance" "SKV-terraform-demo4" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.SKV-terraform-demo4.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.SKV-terraform-demo4.public_ip
}

