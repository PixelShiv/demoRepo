variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
  
}

variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
}


variable "Name" {
  description = "Name tag for the EC2 instance"
  type        = string
}
