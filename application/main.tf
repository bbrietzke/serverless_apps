resource "aws_apigatewayv2_api" "application" {
  name          = var.app_name
  protocol_type = "HTTP"
}

resource "aws_cloudwatch_log_group" "application" {
  name = "/aws/api_gw/${aws_apigatewayv2_api.application.name}"

  retention_in_days = var.log_expiration_days
}

resource "aws_apigatewayv2_stage" "application_stage" {
  api_id = aws_apigatewayv2_api.application.id

  name        = var.stage
  auto_deploy = true

  access_log_settings {
    destination_arn = aws_cloudwatch_log_group.application.arn

    format = jsonencode({
      requestId               = "$context.requestId"
      sourceIp                = "$context.identity.sourceIp"
      requestTime             = "$context.requestTime"
      protocol                = "$context.protocol"
      httpMethod              = "$context.httpMethod"
      resourcePath            = "$context.resourcePath"
      routeKey                = "$context.routeKey"
      status                  = "$context.status"
      responseLength          = "$context.responseLength"
      integrationErrorMessage = "$context.integrationErrorMessage"
      }
    )
  }
}