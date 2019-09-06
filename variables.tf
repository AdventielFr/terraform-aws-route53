#----------------------------
# Custom variables
#----------------------------


variable "domain_name" {
  description = "The domain name"
  type        = "string"
}
variable "force_destroy" {
  description = "Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone."
  default     = false
}

variable "comment" {
  description = "A comment for the hosted zone. Defaults to 'Managed by Terraform'."
  default     = "Managed by Terraform"
}

variable "vpc_id" {
  description = "The vpc ID if is private dns"
  default     = ""
}

variable "tags" {
  description = "Tags for all resources"
  default     = {}
}
