variable "ami" {
  type    = "map"
  default = {
    // ubuntu image ID in eu-west-1 region you have to change if you used another region
    "eu-west-1" = "ami-01e6a0b85de033c99"
  }
}

variable "instance_count" {
  default = "1"
}

variable "instance_tags" {
  type    = "list"
  default = ["YOUR-INSTANCE-TAGS-SHOULD-BE-HERE"]
}

variable "instance_type" {
  default = "t2.nano"
}

variable "aws_region" {
  default = "eu-west-1"
}

variable "aws_profile" {
  default = "YOUR-AWS-PROFILE-NAME-SHOULD-BE-HERE"
}

variable "aws_credentials_file_location" {
    default = "~/.aws/credentials"
}
