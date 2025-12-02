
variable "region" {
  type = string
  default = "ap-south-1"
}

variable "az" {
  type = string
  default = "ap-south-1a"
}

variable "ami" {
  type = string
  default = "ami-0c55b159cbfafe1f0" # example, change for your region
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}
