terraform {
  backend "s3" {
    bucket = "tmrmotta-webpage-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
