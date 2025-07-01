
resource "aws_instance" "PR3-demo-instance" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  key_name               = var.ssh_key_name
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name        = "PR3-Instance"
    environment = "demo"
    managed_by  = "Terraform"
    date        = "2024-06-01"
    author      = "Mahesh"
  }

  root_block_device {
    volume_size           = var.root_block_device_size
    volume_type           = var.volume_type
    delete_on_termination = true

    tags = {
      Name        = "PR3-Root-Volume"
      environment = "demo"
      managed_by  = "Terraform"
      date        = formatdate("YYYY-MM-DD", timestamp())
      author      = "Mahesh"
    }
  }

  ebs_block_device {
    device_name           = "/dev/xvdf"
    volume_size           = var.ebs_block_device_size
    volume_type           = var.volume_type
    delete_on_termination = true

    tags = {
      Name        = "PR3-Volume-EBS-Volume"
      environment = "demo"
      managed_by  = "Terraform"
      date        = formatdate("YYYY-MM-DD", timestamp())
      author      = "Mahesh"
    }
  }

  user_data = <<-EOF
    #!/bin/bash
    {
      sudo apt-get update -y
      sudo apt-get install -y apache2
      sudo systemctl start apache2
      sudo systemctl enable apache2
      echo "Hello, World!" | sudo tee /var/www/html/index.html
      sudo systemctl restart apache2

      # Format and mount EBS volume if not already formatted
      if ! sudo blkid -o value -s TYPE /dev/xvdf | grep -q ext4; then
        sudo mkfs.ext4 /dev/xvdf
      fi

      sudo mkdir -p /data
      sudo mount /dev/xvdf /data

      # Ensure it's mounted on reboot
      if ! grep -Pqs '^/dev/xvdf\\s+/data\\s+ext4\\b' /etc/fstab; then
        echo '/dev/xvdf /data ext4 defaults,nofail 0 2' | sudo tee -a /etc/fstab
      fi
    } &> /var/log/userdata.log
  EOF
}