variable "aws_region" {
  default = "eu-west-2"
}
variable "site_name" {
  description = "The DNS name of the site we're creating"
}
provider "aws" {
  region = "${var.aws_region}"
}
