
terraform {
  backend "s3" {
    bucket         = "my-bucket-shereen"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-secon-table"
  }
}




