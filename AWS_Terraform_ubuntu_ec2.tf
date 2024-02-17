
# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
  access_key = "KEY"
  secret_key = "SECRET"
}

resource "aws_cloud9_environment_ec2" "ec2_instance_now" {
  instance_type = "t2.micro"
  name          = "Ubuntu env2"
  image_id      = "ubuntu-18.04-x86_64"

  tags = {
    Environment = "Test"
  }
} 