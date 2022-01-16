
resource "aws_cloudwatch_log_group" "functional_log" {
  name = "/aws/lambda/${aws_lambda_function.function.function_name}"

  retention_in_days = var.log_expiration_days
}