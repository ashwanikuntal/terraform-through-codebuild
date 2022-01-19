terraform import aws_s3_bucket.bucket akuntal-bucket-terraform

resource "aws_s3_bucket" "onebucket" {
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


