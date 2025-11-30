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

variable "vpc_id" {
    description = "ID of the existing VPC where SES resources will be created"
    type = string
    default = ""
}

variable "vpc_subnet_ids" {
    description = "List of Subnet IDs within the existing VPC"
    type = list(string)
}
