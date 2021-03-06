variable "namespace" {
  type        = string
  description = "Namespace, which could be your team, business name or abbreviation, e.g. 'mag' or 'tar'"
}

variable "name" {
  type        = string
  description = "Solution name, e.g. 'app' or 'jenkins'"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "availability_zone" {
  type        = string
  default     = "eu-central-1a"
  description = "The Availability Zone in which to create your instance"
}

variable "blueprint_id" {
  type        = string
  default     = "ubuntu_20_04"
  description = ""
}

variable "bundle_id" {
  type        = string
  default     = "micro_2_0"
  description = "The bundle of specification information"
}

variable "use_default_key_pair" {
  type        = bool
  default     = false
  description = "Default key pair name will be used, you must keep 'key_pair_name' empty"
}

variable "pubkey_name" {
  type        = string
  default     = ""
  description = "The name of your key pair. Created in the Lightsail console (cannot use aws_key_pair at this time)"
}

variable "pubkey_value" {
  type        = string
  description = "Default pubkey key pair will be used for configuraton management"
}

variable "create_static_ip" {
  type        = bool
  default     = false
  description = "Create and attach a statis IP to the instance"
}

variable "enable_email_alarm" {
  type        = bool
  default     = false
  description = "Enable metric for StatusCheckFailed which will notify using email"
}

variable "email" {
  type        = string
  description = "DevOps email address, used to track owners of the platform, used for notifications and reporting"
}