module "vpc" {
  source = "../../modules/vpc"
  env ="dev"
  cidr_block = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  AZ = "${var.aws_region}a"

  
}

module "ec2" {
    source = "../../modules/ec2"
    ami_id = "ami-051a31ab2f4d498f5"
    instance_type = "t3.micro"
    subnet_id = module.vpc.subnet_id
    instance_count = 2
    env = "dev"
  
}