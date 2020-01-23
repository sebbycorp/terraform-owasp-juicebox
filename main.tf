#### VARIABLES
variable "profile" {
  default = "default"
}
variable "region" {
  default = "us-east-1"
}
variable "key_name" {
  default = "aws-key-sebby"
}
#### CALL MDOULES
module "core_infra" {
  source = "./infra"
}
module "webapp" {
  source   = "./webapp"
  profile  = "${var.profile}"
  region   = "${var.region}"
  key_name = "${var.key_name}"
  # pass web security group and public networks
  sg_web    = "${module.core_infra.sg_web}"
  sn_web    = "${module.core_infra.sn_pub1}"
}
