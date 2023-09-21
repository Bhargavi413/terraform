provider "aws" {
    access_key = "AKIA6EAKQGFLRDQT635G"
    secret_key = "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"
    region =     "us-east-1"  
}

resource "aws_instance" "vmr" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    key_name = "masterslave"
    count = 3
    tags = {
      Name = "Mydevops"
    }
  
}