resource "aws_cloudformation_stack" "ses_identity" {
    name = "AWS-SES"
    parameters = {
        DomainName = var.domain
        MailFromDomainName = var.mailfromdomain
    }
    template_body = file("./modules/ses/ses_email_identity.yml")
}