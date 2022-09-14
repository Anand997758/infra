resource "aws_instance" "apache" {

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.pub_subnet1.id

  security_groups = [aws_security_group.apache-sg.id]
  user_data = file("apacheuser.sh")
}
resource "aws_instance" "bastion" {

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.pub_subnet1.id

  security_groups = [aws_security_group.bastion-sg.id]
}

  