resource "aws_instance" "web" {
  ami           = "ami-04656078adf4aa403"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.SG1.id]
 tags = {
    Name = "Devops"
  }
}
output "out" {
value = aws_instance.web.public_ip
}