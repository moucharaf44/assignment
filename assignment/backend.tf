terraform {
  backend "s3" {
    key = "assignment.tfstate"
    bucket = "adjaobucket"
    region = "us-east-1"
    profile = "default"
    dynamodb_table = "assignment_table"
  }
}