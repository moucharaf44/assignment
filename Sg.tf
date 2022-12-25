resource "aws_security_group" "demo_sg" {
  name        = "dynamic-sg"
  description = "Ingress for Vault"
  dynamic "ingress" {
    for_each = [22, 80]
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = var.cidr[port.value]
    }
  }
}