
output "api_endpoint" {
  value     = aws_apigatewayv2_api.application.api_endpoint
}

output "base_url" {
  value     = aws_apigatewayv2_stage.application_stage.invoke_url
}

output "execution_arn" {
    value  = aws_apigatewayv2_api.application.execution_arn
}

output "id" {
    value = aws_apigatewayv2_api.application.id
}

output "name" {
  value    = aws_apigatewayv2_api.application.name
}