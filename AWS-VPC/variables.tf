variable "ami_id" {
    description = "AMI Id of the instance"
    type = string 
}

variable "region" {
    description = "Region where do you need to install the Instance"
    type = string  
    default = "us-east-1" 
}

variable "availability_zone" {
    description = "availability_zone for the Instance" 
    type = string
    default = "us-east-1a" 
}

variable "instance_type" {
    description = "Type of instance to be created"
    type = string
    default = "t2.micro" 
}

variable "vpc_cidr" {
    description = "Range of IP address your VPC need to have"
    type = string 
}

variable "subnet_cidr" {
    description = "Range of IP address your subnet need to have"
    type = string 
}