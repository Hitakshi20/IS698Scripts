resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-is698-s3-bucket"  
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
