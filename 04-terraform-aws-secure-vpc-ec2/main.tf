# Create a dedicated VPC to isolate project resources from the default AWS network
resource "aws_vpc" "secure_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "secure_vpc"
    }
} 