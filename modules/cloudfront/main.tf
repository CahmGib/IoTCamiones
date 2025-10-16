# Obtener información de la cuenta actual (para SourceArn)
data "aws_caller_identity" "current" {}
locals {
  origin_domain_name = "${aws_s3_bucket.webhost_bucket.bucket}.s3.${var.aws_region}.amazonaws.com"
}
# S3 Bucket para el contenido de la aplicación
resource "aws_s3_bucket" "webhost_bucket" {
  bucket = "s3-${var.project}-frontend-${var.environment}"

  tags = {
    Environment = var.environment
    Application = var.project
  }
}

# Origin Access Control (OAC) para CloudFront
resource "aws_cloudfront_origin_access_control" "web_oac" {
  name                              = "web-oac"
  description                       = "Origin Access Control for Web Application"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

# CloudFront Distribution
resource "aws_cloudfront_distribution" "web_distribution" {
  enabled             = true
  default_root_object = "index.html"
  http_version        = "http2"
  price_class         = "PriceClass_100"
  is_ipv6_enabled     = false

  origin {
    domain_name = "${aws_s3_bucket.webhost_bucket.bucket}.s3.${var.aws_region}.amazonaws.com"

    origin_id                = local.origin_domain_name
    origin_access_control_id = aws_cloudfront_origin_access_control.web_oac.id
  }

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    compress         = true
    target_origin_id = local.origin_domain_name

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  custom_error_response {
    error_code            = 403
    response_page_path    = "/index.html"
    response_code         = 200
    error_caching_min_ttl = 300
  }

  restrictions {
    geo_restriction {

      restriction_type = "none"
    }

    # geo_restriction {
    #   restriction_type = "whitelist"
    #   locations        = ["US", "CA"]
    # }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  tags = {
    Environment = var.environment
    Application = var.project
  }
}

# Política del bucket compatible con OAC
resource "aws_s3_bucket_policy" "webhost_bucket_policy" {
  bucket = aws_s3_bucket.webhost_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid    = "AllowCloudFrontAccessWithOAC",
        Effect = "Allow",
        Principal = {
          Service = "cloudfront.amazonaws.com"
        },
        Action   = "s3:GetObject",
        Resource = "${aws_s3_bucket.webhost_bucket.arn}/*",
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = "arn:aws:cloudfront::${data.aws_caller_identity.current.account_id}:distribution/${aws_cloudfront_distribution.web_distribution.id}"
          }
        }
      }
    ]
  })
}
