resource "aws_s3_bucket" "demo" {
  bucket = "demo-business-aware-policies"
  acl    = "private"
}

resource "aws_s3_bucket_object" "subnet-data" {
  key                    = "subnets.json"
  bucket                 = aws_s3_bucket.demo.id
  content                = "{ 'reserved': ['192.168.0.0/24']}"
  acl                    = "public-read"
}

output "subnet-api" {
  value = aws_s3_bucket_object.subnet-data.id
}