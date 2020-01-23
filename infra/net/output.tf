output "vpc" {
  value = "${aws_vpc.infra-main.id}"
}
output "sn_pub1" {
  value = "${aws_subnet.infra-public1.id}"
}
output "sn_priv1" {
  value = "${aws_subnet.infra-private1.id}"
}
