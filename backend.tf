terraform {
  backend "s3" {
    bucket = "my-sanjer-12345"  # Replace with your existing S3 bucket name
    key    = "terraform.tfstate"        # The key to store the state file in the bucket
    region = "us-east-1"               # The region where the bucket is located
    dynamodb_table = "jerrystate-lock"
    encrypt = true
  }
}
