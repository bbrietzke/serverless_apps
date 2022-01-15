
variable "function_name" {
    type = string
    description = "description name of the function"
}

variable "handler" {
    type = string
    default = "main.lambda_handler"
}

variable "runtime" {
    type = string
    default = "python3.9"
}

variable "filename" {
    default = "../dist/lambda.zip"
}

variable "resource" {
    type = string
}

variable "method" {
    type = string
    default = "GET"
}

variable "log_expiration_days" {
    default = 14
}

variable "application_execution_arn" {}

variable "application_id" {}

variable "application_name" {}