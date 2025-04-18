variable "ami_id" {
    description = "AMI id of the EC2 instance"
    type = string
}

variable "instance_type" {
    description = "Type of the instance we need"
    type = string
    default = "t3.micro" 
}

variable "region" {
    description = "Region at where the instance is"
    type = string
    default = "us-east-1" 
}