variable "name_ip_set_permitidas" {}
variable "scope" {}
variable "ip_address_version" {}
variable "ip_set_permitidas" {}
variable "web_acl_name" {}
variable "environment" {}
variable "web_acl_description" {}
variable "scope_acl" {}
variable "amazon_ip_reputation_list" {
  type = string
}
variable "rule_name_whitelist" {}
variable "rule_name_Fortinet" {}
variable "country_codes" {}