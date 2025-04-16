provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"

    tags = {
        Name = "MyFirst-EC2-Instance" 
    }
} 
