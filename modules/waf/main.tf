
resource "aws_wafv2_web_acl" "tf_wafv2_web_acl" {
  description                    = "${var.web_acl_description}-${var.environment}"
  name                           = "${var.web_acl_name}"
  scope                          = "${var.scope_acl}"
  default_action {
    allow {}
  }


rule {
    name                         = "${var.amazon_ip_reputation_list}_rule"
    priority                     = 1
    override_action {
      count {}
    }
    statement {
      managed_rule_group_statement {
        name                     = var.amazon_ip_reputation_list
        vendor_name              = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "${var.amazon_ip_reputation_list}_block"
      sampled_requests_enabled   = true
    }
  }
  
  rule {
  name                           = "${var.rule_name_whitelist}"
  priority                       = 2
  action {
      allow {}
    }

  statement {
    ip_set_reference_statement {
        arn                     = aws_wafv2_ip_set.ip_permitidas.arn
      }
  }
 visibility_config {
    cloudwatch_metrics_enabled  = "true"
    metric_name                 = "ip_permitidas_metrica"
    sampled_requests_enabled    = "true"
  }
}

rule {
  name                          = "IP_permitidas_regiones"
  priority                      = 3
  action {
      block {}
    }

  statement {
    geo_match_statement {
        country_codes           = var.country_codes
      }
  }
 visibility_config {
    cloudwatch_metrics_enabled  = "true"
    metric_name                 = "ip_permitidas_region_metrica"
    sampled_requests_enabled    = "true"
  }
}
  visibility_config {
    cloudwatch_metrics_enabled  = "true"
    metric_name                 = "${var.web_acl_name}"
    sampled_requests_enabled    = "true"
  }
}



resource "aws_wafv2_ip_set" "ip_permitidas" {
  name                          = var.name_ip_set_permitidas
  description                   = var.name_ip_set_permitidas
  scope                         = var.scope
  ip_address_version            = var.ip_address_version
  addresses                     = var.ip_set_permitidas
}
