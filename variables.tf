variable "aws_region" {
    description = "AWS region"
    type = string
    default = "ap-southeast-2"
}

variable "domain" {
    description = "subdomain name for SES Mail Identity"
    type = string
}

variable "mailfromdomain" {
    description = "subdomain name of SES Mail Identity for sending mail"
    type = string
}