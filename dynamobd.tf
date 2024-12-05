resource "aws_dynamodb_table" "main_table" {
  name           = "${var.project_name}-main-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name        = "${var.project_name}-main-table"
    Environment = var.environment
  }
}