variable "region" {
  description = "The AWS region to create resources in"
  default     = "us-west-2"  # Replace with your preferred region
}

variable "instance_type" {
  description = "The EC2 instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-12345678"  # Replace with your Ubuntu AMI ID
}

variable "key_name" {
  description = "The name of the key pair"
  default     = "your-key-pair-name"  # Replace with your key pair name
}

variable "docker_image" {
  description = "The Docker image to run"
  default     = "your-docker-image"  # Replace with your Docker image
}
