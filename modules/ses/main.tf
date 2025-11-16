resource "aws_cloudformation_stack" "ses_identity" {
    name = "AWS-SES"
    parameters = {
        DomainName = var.domain
        MailFromDomainName = var.mailfromdomain
        vpc_id = var.vpc_id
        vpc_subnet_ids = join(",", var.vpc_subnet_ids)
    }
    template_body = file("./modules/ses/ses_email_identity.yml")
}