resource "aws_instance" "example" {
  ami           = "ami-0481727d0e48e4da7"
  instance_type = "t2.micro"
  key_name = "terraform-key"
  security_groups = ["${aws_security_group.allow_rdp.name}"]

}
