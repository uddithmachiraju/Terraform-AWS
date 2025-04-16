provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro" 
    security_groups = [aws_security_group.allow_ssh.name] 

    tags = {
        Name = "EC2 Instance with VPC" 
    }
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "Allow SSH inbound traffic"

    ingress {
        from_port = 22
        to_port = 22 
        protocol = "tcp" 
        cidr_blocks = ["0.0.0.0/0"] 
    }

    egress {
        from _port = 0
        to_port = 0 
        protocol = "-1"
        cidr_block = ["0.0.0.0/0"] 
    }
}