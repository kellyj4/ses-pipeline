variable "aws_region" {
    description =   "AWS Region"
    type    = string
    default = "ap-southeast-2"
}

provider "aws" {
    region = var.aws_region
}

variable "domain" {
    description = "subdomain name for SES Mail Identity"
    type = string
}

variable "mailfromdomain" {
    description = "subdomain name for SES Mail Identity for sending mail"
    type = string
}

variable "dkimkeysign" {
    description = "DKIM key strength"
    type = string
    default = "RSA_2048_BIT"
}

variable "vpc_id" {
    description = "ID of the existing VPC where SES resources will be created"
    type = string
}

variable "vpc_subnet_ids" {
    description = "List of Subnet IDs within the existing VPC"
    type = list(string)
}