
resource "aws_instance" "juicebox" {
  ami           = "ami-062f7200baf2fa504"
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"
  subnet_id     = "${var.sn_web}"
  user_data     = "${file("${path.module}/juice.sh")}"
  associate_public_ip_address = true
vpc_security_group_ids = [
    "${var.sg_web}",
  ]
  tags = {
    "Name" = "infra-webserver"
    "Site" = "infra-web-site"
  }
}