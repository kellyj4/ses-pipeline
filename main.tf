module "ses_email_identity" {
   source	= "./modules/ses"
   domain	= var.domain
   mailfromdomain = var.mailfromdomain
}

