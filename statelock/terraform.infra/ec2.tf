resource "aws_instance" "my_first_ec2" {
                ami = "ami-006f82a1d5a27da54"
                instance_type = "t2.micro"
                subnet_id = aws_subnet.public_subnet.id
                tags = {
                  Name = "Terraform-EC2"
                }
        }
