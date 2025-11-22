variable "aws_region" {
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "ec2_ami" {
  type        = string
  default     = "ami-0c02fb55956c7d316"
}

variable "key_name" {
  type        = string
  default     = "my-keypair-name"
}