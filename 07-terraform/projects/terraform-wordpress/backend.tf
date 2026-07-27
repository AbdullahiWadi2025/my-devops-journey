terraform {
  backend "s3" {
    bucket = "terraform-state-abdullahi"
    key    = "wordpress/terraform.tfstate"
    region = "us-west-1"
  }
}