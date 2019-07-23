provider "aws" {
    region                  = "${var.aws_region}"
    shared_credentials_file = "${var.aws_credentials_file_location}"
    profile                 = "${var.aws_profile}"
    version                 = "~> 2.0"
}
resource "aws_key_pair" "deployer" {
    key_name    = "YOUR-KEY-NAME-SHOULD-BE-HERE"
    public_key  = "YOUR-KEY-SHOULD-BE-HERE"
  }