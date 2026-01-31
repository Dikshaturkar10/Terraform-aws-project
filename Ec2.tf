provider "aws" {
    region = "eu-north-1"    #----> the region in which resources are created
}

## Ec2 Instnace

resource "aws_instance" "my_instance" {
  ami           = "ami-0fa91bc90632c73c9"   
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.aws_sg.id]  # associating security group with instance

  tags = {
    env = "dev"
  }
}

## security group

resource "aws_security_group" "aws_sg" {     # to create security group
  name        = "sg_name"
  description = "security group for instance"
  vpc_id      = "vpc-0fed28ece99ad2aa5"      #----> chnage according to region 

    ingress {                               # inbound rule
    from_port   = 80  
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    egress {                               # outbound rule
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
  
    tags = {
    env = "dev"
  }
}
