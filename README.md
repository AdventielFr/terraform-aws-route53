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

### Inputs

| Name | Description | Type | Default |
|------|-------------|:----:|:-----:|
| comment | A comment for the hosted zone. Defaults to 'Managed by Terraform'. | string | "Managed by Terraform" |
| domain\_name | The domain name | "string" | n/a |
| force\_destroy | Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone. | string | false |
| tags | Tags for all resources | string | {} |
| vpc\_id | The vpc ID if is private dns | string | "" |

## III - Usage

### III.1 - Public Zone

`````
module "dns" {
  source  = "github.com/gwendallg/terraform-aws-route53"
  version = "v1.0.0"

  domain_name = "${var.domain_name}"
}
`````

### III.2 - Private Zone

`````
module "dns" {
  source  = "github.com/gwendallg/terraform-aws-route53"
  version = "v1.0.0"
  domain_name = "${var.domain_name}"
  vpc_id = "vpc-08543dc6bb8xxxxxx"
}
`````