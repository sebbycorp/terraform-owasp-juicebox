# Net module output
output "vpc" {
  value = "${module.network.vpc}"
}
output "sn_pub1" {
  value = "${module.network.sn_pub1}"
}
output "sn_priv1" {
  value = "${module.network.sn_priv1}"
}
# Sec module output
output "sg_web" {
  value = "${module.security.sg_web}"
}
