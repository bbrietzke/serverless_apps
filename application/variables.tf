variable "app_name" {
    type = string
    description = "name of the application"
}

variable "stage" {
    type = string
    description = "production or development"
    default = "development"
}

variable "log_expiration_days" {
    default = 14
}