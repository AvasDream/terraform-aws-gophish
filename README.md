# Terraform-AWS-gophish

Deploy Gophish to AWS Instance with Terraform.

# variables.tf file

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
