resource "aws_security_group" "ingress-all-test" {
    name    = "allow-all-sg"
    vpc_id  = "${aws_vpc.iac.id}"
    ingress {
      cidr_blocks = [
        "0.0.0.0/0"
      ]
      ipv6_cidr_blocks  = [
        "::/0"
      ]
      from_port = 22
      to_port = 22
      protocol = "tcp"
  }

  ingress {
      cidr_blocks       = [
        "0.0.0.0/0"
      ]
      ipv6_cidr_blocks  = [
        "::/0"
      ]
      from_port = 80
      to_port = 80
      protocol = "tcp"
  }

  ingress {
      cidr_blocks = [
        "0.0.0.0/0"
      ]
      ipv6_cidr_blocks  = [
        "::/0"
      ]
      from_port = 443
      to_port   = 443
      protocol  = "tcp"
  }
// Terraform removes the default rule
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
 }
}