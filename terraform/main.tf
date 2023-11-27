# Who is the cloud provider
provider "aws" {

# location of AWS
  region = var.aws-region

}
# To download required dependencies
# create a service/resource on the cloud - ec2 on AWS

resource "aws_instance" "nginx_instance" {
   ami = "ami-0d8032c3fa7e6a778"
   instance_type = "t2.micro"
   tags = {
     Name = "alex-terraform-test-nginx"
   }

}
