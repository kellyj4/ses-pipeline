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