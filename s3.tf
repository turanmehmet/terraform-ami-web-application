resource "aws_s3_bucket" "s3b" {
  bucket = var.bucketname
    tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}