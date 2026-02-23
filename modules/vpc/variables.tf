variable "env" {
    type = string
    description = "environment for vpc"
  
}
variable "cidr_block" {
    type = string
    description = "CIDR block for vpc"
  
}
variable "subnet_cidr" {
    type = string
    description = "sub cidr for vpc"
  
}
variable "AZ" {
    type = string
    description = "AZ of the subnet"
  
}
