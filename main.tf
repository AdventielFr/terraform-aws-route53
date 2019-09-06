


#----------------------------
# Route 53 
#----------------------------
resource "aws_route53_zone" "private" {
  count         = "${var.vpc_id !="" ? 1 : 0 }"
  name          = "${var.domain_name}"
  comment       = "${var.comment}"
  force_destroy = "${var.force_destroy}"
  tags          = "${var.tags}"

  vpc {
    vpc_id = "${var.vpc_id}"
  }
}

resource "aws_route53_zone" "public" {
  count         = "${var.vpc_id =="" ? 1 : 0 }"
  force_destroy = "${var.force_destroy}"
  comment       = "${var.comment}"
  name          = "${var.domain_name}"
  tags          = "${var.tags}"
}
