variable "ami_id" {
    type = string
    description = "Ami id for ec2"
}   
variable "instance_type" {
    type = string
    description = "instance type for for ec2"
}   
variable "subnet_id" {
    type = string
    description = "subnet_id for ec2"
}   
variable "count" {
    type = string
    description = "count id for ec2"
}   
variable "env"{
    type = string
    description = "what environment we are creating for (dev,qa,prod)"
}   








