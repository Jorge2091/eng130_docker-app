
provider "aws" {
    region = "eu-west-1"
}    

resource "aws_s3_bucket" "b" {
    bucket = "eng130-jorge-videos"

    tags = {
        Name        = "jorgeTags"
        Environment = "Dev"
    }
}

# resource "aws_s3_bucket_acl" "example" {
#     bucket = aws_s3_bucket.b.id
#     #acl    = "plublic-read"
#     acl    = "private"
# }