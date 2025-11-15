module "ses_email_identity" {
   source	= "./module/ses"
   domain	= var.domain
   mailfromdomain = var.mailfromdomain
}

