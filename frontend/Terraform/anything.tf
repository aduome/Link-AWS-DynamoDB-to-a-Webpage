terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
  
}

resource "aws_dynamodb_table" "Terraform_GuestBook" {
  name           = "Terraform_GuestBook_2"
  billing_mode   = "PROVISIONED"
  read_capacity  = 10
  write_capacity = 10
  hash_key = "id"
  
  attribute {
    name = "id"
    type = "S"
  } 
  


}

resource "aws_dynamodb_table_item" "insert_item1" {
  table_name = aws_dynamodb_table.Terraform_GuestBook.name
  hash_key   = aws_dynamodb_table.Terraform_GuestBook.hash_key
  item       = <<ITEM
{
  "id": {"S": "001"},
  "email": {"S": "daniel.owusu@azubiafrica.org"},
  "number": {"S": "020456794"},
  "country": {"S": "Ghana"},
  "gender": {"S": "Male"},
  "name": {"S": "Daniel Agyei"}
}
ITEM

}

resource "aws_dynamodb_table_item" "insert_item2" {
  table_name = aws_dynamodb_table.Terraform_GuestBook.name
  hash_key   = aws_dynamodb_table.Terraform_GuestBook.hash_key
  item       = <<ITEM
{
  "id": {"S": "002"},
  "email": {"S": "dossou.dotse@azubiafrica.org"},
  "number": {"S": "0550352787"},
  "country": {"S": "Ghana"},
  "gender": {"S": "male"},
  "name": {"S": "Dossou Dotse"}
}
ITEM

}

resource "aws_dynamodb_table_item" "insert_item3" {
  table_name = aws_dynamodb_table.Terraform_GuestBook.name
  hash_key   = aws_dynamodb_table.Terraform_GuestBook.hash_key
  item       = <<ITEM
{
  "id": {"S": "003"},
  "email": {"S": "fahad.mohammed@azubiafrica.org"},
  "number": {"S": "0244568739"},
  "country": {"S": "Ghana"},
  "gender": {"S": "Male"},
  "name": {"S": "Fahad Mohammed"}
}
ITEM

}
