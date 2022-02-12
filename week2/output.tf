

output "adam" {
  value = "ACCESS_KEY: ${aws_iam_access_key.adam.id}, SECRET: ${aws_iam_access_key.adam.secret}"
  sensitive = true
}

output "eva" {
  value = "ACCESS_KEY: ${aws_iam_access_key.eva.id}, SECRET: ${aws_iam_access_key.eva.secret}"
  sensitive = true
}