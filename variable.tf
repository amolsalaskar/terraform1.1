variable "project" {
  description = "my-terraform-1402"
}

variable "credentials" {
  description = "/Users/amolsalaskar/Desktop/personal_data/terraform_practise/my-terraform-1402-8a6d900ad485.json"
  sensitive   = true
}

variable "region" {
  default = "asia-south1"
}

variable "zone" {
  default = "asia-south1-a"
}

variable "machine_type" {
  default = "e2-small"
}

variable "image" {
  default = "debian-cloud/debian-11"
}
