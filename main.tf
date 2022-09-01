provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "spinnaker-create-bucket" {
  bucket = "dou-armory-terraform-stage-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    name        = "spinnaker-terraform-tag"
  }
}
