resource "aws_instance" "wordpress" {

  ami = var.ami

  instance_type = var.instance_type

  key_name = aws_key_pair.wordpress.key_name

  vpc_security_group_ids = [
    aws_security_group.wordpress_sg.id
  ]

  user_data = file("user-data.sh")

  tags = {
    Name = "wordpress-server"
  }
}