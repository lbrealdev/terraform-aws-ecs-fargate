# terraform-aws-ecs-fargate
Terraform module for create [ECS cluster](https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html) `Fargate` on AWS


### Usage
```
provider "aws" {
  region = "eu-central-1"
}

module "ecs_fargate" {
  source = "git::github.com/lbrealdev/terraform-aws-ecs-fargate"

  cluster_name = "yourclustername"
}
```


1. Init
```
terraform init
```
2. Plan
```
terraform plan -out=plan
```
3. Apply
```
terraform apply plan
```
4. Destroy
```
terraform destroy
```