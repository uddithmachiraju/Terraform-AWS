resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.my_vpc.id 
    cidr_block = var.subnet_cidr 
    availability_zone = var.availability_zone 
    map_public_ip_on_launch = true

    tags = {
        Name = "my-public-subnet" 
    }
}