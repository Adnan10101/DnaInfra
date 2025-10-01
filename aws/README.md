<h1>DNA Cloud Terraform — AWS Infra Provisioning</h1>

Prereq:
1. AWS account access key 
2. AWS account secret key

Reference .tfvars file
```
access_key = <access-key>

secret_key = <secret-key>

vpc_cidr_block           = "10.0.0.0/16"
vpc_tag_name             = "demo-vpc"
subnet_cidr_block        = "10.0.0.0/24"
subnet_tag_name          = "demo-subnet"
subnet_availability_zone = "us-east-1a"
bucket_name              = "randombucket101010101"
ami                      = "ami-0360c520857e3138f"
instance_tag_name        = "demo-instance"
instance_type            = "t2.micro"

```

To Provision
1. Initialize Terraform
  ```
  terraform init
  ```
2. Preview
```
terraform plan -var-file=<name-of-tfvars-file>
```
3. Create
```
terraform apply -var-file=<name-of-tfvars-file>
```
