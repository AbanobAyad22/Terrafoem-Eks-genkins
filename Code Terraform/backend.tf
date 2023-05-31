terraform {
  backend "s3" {
    bucket         = "abanoob-bucket"
    dynamodb_table = "terraformm-Dynamo"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}