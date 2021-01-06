provider "aws" {
  region     = var.region
  }

resource "aws_instance" "pub_ser" {
  count = 2
  ami           = var.ami_id
  instance_type = var.int_type
  subnet_id = "subnet-2390d16f"
  key_name = "demo"

  tags = {
    Name = "terraform-${count.index+1}"
      }
}

