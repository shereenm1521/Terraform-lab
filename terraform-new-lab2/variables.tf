# main.tf

variable "cidr" {
  description = "this is the cidr of the VPC"
  type        = string
}

variable "ami-id" {
  type = string

}

variable "instance_type" {
  type = string

}

variable "region" {

  type = string
}

variable "subnet_public_cidr" {
  description = "CIDR block for public subnet"
  type        = list(any)
}

variable "subnet_private_cidr" {
  description = "CIDR block for private subnet"
  type        = list(any)
}

variable "az" {
  type = list(any)

}
