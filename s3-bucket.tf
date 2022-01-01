locals {
  bucket_exists = "true"
}

data "aws_bucket" "test" {
  lb_exists = "${local.bucket_exists}"
  depends_on    = ["aws_s3_bucket.onebucket"]
}

resource "aws_s3_bucket" "onebucket" {
   count = local.bucket_exists == "true" ? 1 : 0
   bucket = "akuntal-bucket-terraform"
   acl = "private"
   versioning {
      enabled = true
   }
   tags = {
     Name = "Bucket1"
     Environment = "Test"
   }
}