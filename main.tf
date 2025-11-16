module "ses_email_identity" {
   source	= "./modules/ses"
   domain	= var.domain
   mailfromdomain = var.mailfromdomain
   vpc_id = var.vpc_id
   vpc_subnet_ids = var.vpc_subnet_ids
}

