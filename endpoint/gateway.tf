

resource "aws_apigatewayv2_integration" "function" {
  api_id = var.application_id

  integration_uri    = aws_lambda_function.function.invoke_arn
  integration_type   = "AWS_PROXY"
  integration_method = "POST"
}

resource "aws_apigatewayv2_route" "function" {
  api_id = var.application_id

  route_key = format("%s %s", var.method, var.resource)
  target    = "integrations/${aws_apigatewayv2_integration.function.id}"
}