provider "aws" {
  access_key = "A##################G"
  secret_key = "#############################"
  region     = "us-east-2"
}

resource "aws_instance" "K8-M" {
  ami                    = "ami-0b4750268a88e78e0"
  instance_type          = "t3.micro"  
  key_name               = "ohio-key-17april"
  subnet_id              = "subnet-03e442b098c83607c"  
  vpc_security_group_ids = ["sg-013463bd184ede3b9"]
  associate_public_ip_address = true  # Ensure public IP assignment

  tags = {
    Name = "K8master"
  }
}

resource "aws_instance" "K8-s" {
  ami                    = "ami-0b4750268a88e78e0"
  instance_type          = "t3.micro" 
  key_name               = "ohio-key-17april"
  subnet_id              = "subnet-03e442b098c83607c"  
  vpc_security_group_ids = ["sg-013463bd184ede3b9"]
  associate_public_ip_address = true  # Ensure public IP assignment

  tags = {
    Name = "K8slave-1"
  }
}
