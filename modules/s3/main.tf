resource "aws_s3_bucket" "s3" {
  bucket = var.bucket1

  tags = {
    Name        = var.bu_name
    Environment = var.env
  }
}