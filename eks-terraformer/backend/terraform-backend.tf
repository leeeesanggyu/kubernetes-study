resource "aws_s3_bucket" "test-s3-tf-state" {

  bucket = "k8s-s3-tf-state"

  tags = {
    "Name" = "k8s-s3-tf-state"
  }

}

resource "aws_dynamodb_table" "test-ddb-tf-lock" {

  depends_on   = [aws_s3_bucket.test-s3-tf-state]
  name         = "k8s-ddb-tf-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }

  tags = {
    "Name" = "k8s-ddb-tf-lock"
  }

}