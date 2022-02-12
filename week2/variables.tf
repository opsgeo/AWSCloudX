variable "access_key" {
  description = "Access key to AWS console"
}
variable "secret_key" {
  description = "Secret key to AWS console"
}
variable "region" {
  description = "Region of AWS VPC"
}

variable "username" {
  type    = list(any)
  default = ["Adam", "Eva"]
}