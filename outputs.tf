output "lambda_function_name" {
  value = aws_lambda_function.main_lambda.function_name
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.main_table.name
}