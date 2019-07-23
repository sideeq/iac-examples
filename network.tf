resource "aws_vpc" "iac" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "main"
  }

}
resource "aws_subnet" "iac_subnet" {
  vpc_id     = "${aws_vpc.iac.id}"
  cidr_block = "${cidrsubnet(aws_vpc.iac.cidr_block, 3, 1)}"
  availability_zone = "eu-west-1a"
}
resource "aws_eip" "ip" {
    count       = "${var.instance_count}"
    instance    = "${aws_instance.web.*.id[count.index]}"
    vpc         = true
}

resource "aws_internet_gateway" "gw" {
    vpc_id = "${aws_vpc.iac.id}"
    
    tags = {
        Name = "internet_gateway"
  }
}
resource "aws_route_table" "route_table" {
    vpc_id = "${aws_vpc.iac.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.gw.id}"

    }

    tags = {
        Name = "route_table"
    }
}

resource "aws_route_table_association" "subnet_association" {
    subnet_id = "${aws_subnet.iac_subnet.id}"
    route_table_id = "${aws_route_table.route_table.id}"
}