variable "aws_region" {
  default = "eu-west-2"
  description = "Which region would you like to use (Default is London eu-west-2)"
}
variable "site_name" {
  description = "The DNS name of the site we're creating"
  default = "ce.co.uk"
}
provider "aws" {
  region = "${var.aws_region}"
}
