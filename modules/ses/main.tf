resource "aws_cloudformation_stack" "ses_identity" {
    name = "AWS-SES"
    parameters = {
        DomainName = var.domain
        MailFromDomainName = var.mailfromdomain
        ExistingVPCID = var.vpc_id
        ExistingVPCSubnetIDs = join(",", var.vpc_subnet_ids)
        ExistingSNSTopicARN = var.sns_topic_arn
    }
    template_body = file("./modules/ses/ses_email_identity.yml")
}