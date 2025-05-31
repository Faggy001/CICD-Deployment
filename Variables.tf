variable "region" {
  type    = string
  default = "ca-central-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr_list" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "ssh_key" {
  type    = string
  default = "Flask-key"
}

variable "tfstate_bucket" {
  type = string
}