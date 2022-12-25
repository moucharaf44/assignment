resource "aws_instance" "assignment" {
  ami                    = var.amiid
  instance_type          = var.instance_type
  key_name               = var.key_pair
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags                   = {
    Name = var.instance_name
  }
  associate_public_ip_address = true
  user_data                   = file("./scripts/setup.sh")
}
