provider "aws" {
  region = "us-east-1"
 # access_key = "AKIAJ2HORN6XWLJHKSMA"
  #secret_key = "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"
}

# resource "<provider>_<resource>" "name" {
#   config option
#   key = "value1"
#   key = "value2"
# }

resource "aws_instance" "first-server" {
  ami           = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"
  tags = {
    Name = "server-by-terraform"
  }
}