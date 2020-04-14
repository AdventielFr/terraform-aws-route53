  <table>
    <tr>
      <td style="text-align: center; vertical-align: middle;"><img src="_docs/logo_aws.jpg"/></td>
      <td style="text-align: center; vertical-align: middle;"><img src="_docs/logo_adv.jpg"/></td>
    </tr>
  <table>

# AWS Route 53 Terraform module

The purpose of this module is to create Route 53 DNS zones.
These areas can be private or public.

## I - Infrastructure components

Show terraform files

## II - Inputs / Outputs

### Providers

| Name | Version |
|------|---------|
| aws | n/a |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| comment | A comment for the hosted zone. Defaults to 'Managed by Terraform'. | `string` | `"Managed by Terraform"` | no |
| domain\_name | The domain name | `string` | n/a | yes |
| force\_destroy | Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone. | `bool` | `false` | no |
| tags | Tags for all resources | `map` | `{}` | no |
| vpc\_id | The vpc ID if is private dns | `string` | `""` | no |

### Outputs

| Name | Description |
|------|-------------|
| domain\_name | DNS domain name |
| name\_servers | DNS name servers |
| zone\_id | DNS zone |

## III - Usage

### III.1 - Public Zone

```terraform
module "dns" {
  source  = "git::https://github.com/AdventielFr/terraform-aws-route53.git?ref=1.1.0"
  version = "v1.0.0"

  domain_name = "${var.domain_name}"
}
```

### III.2 - Private Zone

```terraform
module "dns" {
  source  = "git::https://github.com/AdventielFr/terraform-aws-route53.git?ref=1.1.0"
  domain_name = "${var.domain_name}"
  vpc_id = "vpc-08543dc6bb8xxxxxx"
}
```
