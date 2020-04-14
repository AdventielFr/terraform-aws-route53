

output "zone_id" {
    description = "DNS zone"
    value = join("",concat(aws_route53_zone.public.*.zone_id,aws_route53_zone.private.*.zone_id))
}

output "name_servers" {
    description = "DNS name servers"
    value = concat(aws_route53_zone.public.*.name_servers,aws_route53_zone.private.*.name_servers)
}

output "domain_name" {
    description = "DNS domain name"
    value = var.domain_name
}

