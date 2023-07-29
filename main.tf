# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "tmrmotta.com"
resource "aws_s3_bucket" "bucket" {
  bucket              = "tmrmotta.com"
  force_destroy       = true
  object_lock_enabled = false
  policy              = data.aws_iam_policy_document.publicreadgetobject.json
  request_payer       = "BucketOwner"
  tags                = {}
  tags_all            = {}

  grant {
    id = "828847841664df5b417a5e11b81b7d4dc6642c47fa2d17146a5e1b9dcaec9271"
    permissions = [
      "FULL_CONTROL",
    ]
    type = "CanonicalUser"
  }

  server_side_encryption_configuration {
    rule {
      bucket_key_enabled = false

      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

##

  versioning {
    enabled    = true
    mfa_delete = false
  }

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.bucket.bucket
  key    = "index.html"
  source = "./html/index.html"
  etag     = filemd5("./html/index.html")
}

resource "aws_s3_object" "style" {
  bucket = aws_s3_bucket.bucket.bucket
  key    = "style.css"
  source = "./html/style.css"
  etag     = filemd5("./html/style.css")
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.bucket.bucket
  key    = "error.html"
  source = "./html/error.html"
  etag     = filemd5("./html/error.html")
}
