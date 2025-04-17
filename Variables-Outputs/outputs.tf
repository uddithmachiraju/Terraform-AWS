output "public_IP" {
    description = "Public address of EC2 Instance"
    value = aws_instance.my_ec2.public_ip
}