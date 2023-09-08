variable "project" {
  description = "my-terraform-1402"
}

variable "credentials" {
  default = "my-terraform-1402-8a6d900ad485.json"
}


variable "region-west" {
  default = "us-west1"
}

variable "region-east" {
  default = "us-east1"
}

variable "zone_west1" {
  default = "us-west1-a"
}

variable "zone_east1" {
  default = "us-east1-b"
}

variable "ip-cidr-range-west" {

  default = "10.10.0.0/24"
}

variable "ip-cidr-range-east" {

  default = "10.20.0.0/24"
}

variable "machine_type" {
 #default = "f1-micro"
  default = "e2-medium"
}

variable "image" {
  default = "debian-cloud/debian-11"
}