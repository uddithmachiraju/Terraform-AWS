resource "aws_instance" "my_ec2" {
    ami_id = var.ami_id
    instance_type = var.instance_type 

    tags = {
        Name = "Terraform-AWS-Web-Server_Deployment"
    }
}

resource "aws_vpc" "main_vpc" {
    cidr_block = ["0.0.0.0/0"] 
}

resource "aws_subnet" "public_subnet" {
    vpc_id = main_vpc.cidr_block.id 

}