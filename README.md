# Terraform-AWS-gophish

Deploy Gophish to AWS EC2 Instance with Terraform.

# Requirements

- Terraform is installed and in the current \$PATH
- You know your AWS access and secret keys. [Official Documentation](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html)
- You created an AWS SSH Key. [Official Documentation](https://docs.aws.amazon.com/ground-station/latest/ug/create-ec2-ssh-key-pair.html)

# Setup

1. Create a variables.tf file.
2. Copy example Content in Variables file. Enter your own access and secret key and change instance size preferences.
3. Execute `terraform init`
4. Execute `terraform apply`

variables.tf file:

```
variable "aws_access_key" {
  default = "D0N7PV5HC23DST0617HVB"
}
variable "aws_secret_key" {
  default = "lsoffcdpipeo4klfoLOLj4odj2o4jiopf"
}
variable "aws_region" {
  default = "eu-central-1"
}
variable "ssh_key_path" {
  default = "C:/Users/...."
}
variable "enable_rdp" {
  default = true
}
variable "gpu_instance" {
  default = "t2.large"
}
variable "ssh_key_name" {
  default = "terraform-key"
}
```
