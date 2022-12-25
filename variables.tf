variable "region" {}

variable "profile" {}

variable "cidr" {
  default = {
    22 = ["0.0.0.0/0"]
    80 = ["0.0.0.0/0"]
  }
}

variable "amiid" {}

variable "instance_type" {}

variable "instance_name" {}

variable "key_pair" {}