#variables if assigned a value are not mandatory
variable "AWS_REGION" {
    default = "us-east-2"
}
# variables not assigned a value means they are mandatory. And will prompt for value during plan.
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}