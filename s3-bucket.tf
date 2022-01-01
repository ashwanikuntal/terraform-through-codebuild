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


