locals {
  hello = "world"
}

variable "default_labels" {
  type = map(string)
  default = {}
}

output "hello" {
  value = local.hello
}

output "default_labels" {
  value = var.default_labels
}

output "gitlab_encrypted_variable_plain_text" {
  value = local.secrets.gitlab_encrypted_variable_plain_text
}
