provider "aws" {
 region= "# required region"
 access_key= "# your IAM role access key"
 secret_key= "# your IAM role secret key"
}

resource "aws_instance" "instance1"{
 ami = "ami-052efd3df9dad4825"
 instance_type="t2.micro"
 key_name= "RedHatKP"
 security_groups = ["cw-blog-3-sg-using-terraform"]
  tags = 
  {
   Name = "tfInstance"
  }
}


resource "aws_security_group" "default_myfirst" {
  name = "myfirstsecuritygroup"
 ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["0.0.0.0/0"]
 }
 egress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["0.0.0.0/0"]
 }
 tags = {
 Name = "myfirstsecuritygroup"
 }
}
