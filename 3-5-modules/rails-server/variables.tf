variable "instance_type" {
  type = "string"
  default = "t2.micro"
}

variable "name" {
  type = "string"
}

variable "key_pair" {
  type = "string"
  default = "my_test_key"
}

variable "key_pair_key" {
  type = "string"
}

variable "security_groups" {
  type = "list"
  default = []
}
