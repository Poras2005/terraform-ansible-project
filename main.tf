provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "your-key-name"

  tags = {
    Name = "Terraform-Ansible-Server"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
