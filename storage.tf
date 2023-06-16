resource "aws_s3_bucket" "Sar-My-S3-Bkt" {
	bucket	= "sar-pract-var01"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.Sar-My-S3-Bkt.id
  acl    = "private"
  depends_on = [aws_s3_bucket_ownership_controls.s3_bucket_acl_ownership]
}

# Resource to avoid error "AccessControlListNotSupported: The bucket does not allow ACLs"
resource "aws_s3_bucket_ownership_controls" "s3_bucket_acl_ownership" {
  bucket = aws_s3_bucket.Sar-My-S3-Bkt.id
  rule {
    object_ownership = "ObjectWriter"
  }
}
