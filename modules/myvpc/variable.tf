variable "vpc_cidr" {
  type = list(string)
}

variable "name_tags" {
  type = list(string)
}

variable "region" {
  type = string
}

variable "cidr_private" {
  type = list(string)
}

variable "cidr_public" {
  type = list(string)
}

variable "tags_private" {
  type = list(string)
}

variable "tags_public" {
  type = list(string)
}