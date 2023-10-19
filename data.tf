data "aws_iam_policy_document" "publicreadgetobject" {
  statement {
    actions = ["s3:GetObject"]
    effect  = "Allow"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    resources = ["arn:aws:s3:::tmrmotta.com/*"]
    sid       = "PublicReadGetObject"
  }
}