resource "aws_instance" "web" {
  ami               = "${lookup(var.ami,var.aws_region)}"
  instance_type     = "${var.instance_type}"
  count             = "${var.instance_count}"
  key_name          = "${aws_key_pair.deployer.key_name}"
  security_groups   = ["${aws_security_group.ingress-all-test.id}"]
  subnet_id         = "${aws_subnet.iac_subnet.id}"

  tags = {
    Name = "${element(var.instance_tags, count.index)}"
  }
}