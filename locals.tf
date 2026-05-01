locals {
  sg_tags = merge({Name = "sg-${var.project}-${terraform.workspace}"}, var.common_tags)
  common_name = "${terraform.workspace}-${var.project}-${var.region}"
  r53_common_name = "${local.common_name}.${var.r53_record_name}"
  public_r53_record = "${var.project}.${terraform.workspace}.${var.r53_record_name}"
  sg_name = "${var.project}-${terraform.workspace}-${var.region}"
}
