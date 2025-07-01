provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "tf-fun" {
  ami           = "ami-05f991c49d264708f" 
  instance_type = "t3.micro"
    key_name      = "oregon"
    vpc_security_group_ids = ["sg-0a6ff86cf2b56a154"]
    subnet_id     = "subnet-0b4cb61747d17ecb3"  
    associate_public_ip_address = true  
    user_data = <<-EOF
                #!/bin/bash
                sudo apt-get update -y
                sudo apt-get install -y apache2
                echo "Hello, World!" > /var/www/html/index.html
                systemctl start apache2
                EOF     
  volume_tags = {
    Name = "tf-fun-root-volume"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = 10    
  }

  tags = {
    Name = "tf-fun-instance"
  }
}