provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro" 

    tags = {
        Name = "EC2 Instance with S3 bucket"
    }
}

resource "aws_s3_bucket" "my_s3" {
    bucket = "EC2-S3-Bucket-Testing" 

    versioning {
        enabled = true
    }

    tags = {
        Name = "S3-Bucket-Testing"
    }
}