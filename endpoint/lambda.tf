
resource "aws_lambda_function" "function" {
    role = "${aws_iam_role.lambda_exec.arn}"
    handler = "${var.handler}"
    runtime = "${var.runtime}"
    filename = "${var.filename}"
    function_name = "${var.function_name}"
    source_code_hash = filebase64sha256("${var.filename}")
}

resource "aws_lambda_permission" "api_gw" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = "${var.function_name}"
  principal     = "apigateway.amazonaws.com"

  source_arn = "${var.application_execution_arn}/*/*"
}