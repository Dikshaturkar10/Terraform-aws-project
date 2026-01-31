## It will store the tf.statefile in S3 bucket 

terraform {
  backend "s3" {
    bucket = "ubuntu-s3-bucket-backend"  #---->> Bucket name 
    key    = "terraform.tfstate"
    region = "eu-north-1"           #----->> change according to the region where your S3 bucket is created
    
  }
}

provider "aws" {
    region = "eu-north-1"       
}


## Resource to create Instance 

resource "aws_instance" "my_instance" {
   ami = "ami-0fa91bc90632c73c9"        
   instance_type = "t3.small"
   key_name = "viju-key"
    tags = {
        Name = "My-instance"
        env = "dev"
    }
}
