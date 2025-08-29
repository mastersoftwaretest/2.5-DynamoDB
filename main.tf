module "dynamodb_table" {
  source   = "terraform-aws-modules/dynamodb-table/aws"

  name           = "jiaqing-bookinventory"   
  billing_mode   = "PAY_PER_REQUEST"           
  hash_key       = "ISBN"
  range_key      = "Genre"

attributes = [
    { name = "ISBN", type = "S" },
    { name = "Genre", type = "S" }
  ]

  }

