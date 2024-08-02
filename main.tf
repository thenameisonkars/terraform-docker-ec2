provider "aws" {
  region = "us-east-2"  # Replace with your preferred region
}

resource "aws_instance" "docker_ec2" {
  ami           = "ami-0c11a84584d4e09dd"  # Use an appropriate Amazon Linux 2 AMI
  instance_type = "t2.micro"
  key_name      = "test1-vpc"     # Replace with your key pair name

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install -y docker.io
              sudo systemctl start docker
              sudo usermod -aG docker ubuntu
              sudo docker run -d -p 80:80 your-docker-image  # Replace with your Docker image
              EOF

  tags = {
    Name = "DockerEC2"
  }
}

output "instance_public_ip" {
  value = aws_instance.docker_ec2.public_ip
}
