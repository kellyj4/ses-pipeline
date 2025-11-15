resource "aws_cloudformation_stack" "ses_identity" {
    name = "AWS-SES"
    parmeters = {
        DomainName = var.domain
        MailFromDomainName = var.mailfromdomain
    }
    template_body = file("./ses_email_identity.yml")
}