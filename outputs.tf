output "ip" {
  value = "${aws_eip.ip.*.public_ip}"
}

output "region" {
  value = "${var.aws_region}"
}
