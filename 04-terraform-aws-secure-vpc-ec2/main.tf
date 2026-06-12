# Create a dedicated VPC to isolate project resources from the default AWS network
resource "aws_vpc" "secure_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "secure_vpc"
    }
} 

#Public subnet for internet-facing resources
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.secure_vpc.id
    cidr_block = 10.0.1.0/24
}