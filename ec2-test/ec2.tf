resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = "${aws_key_pair.deployer.key_name}"
  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.public_key
}