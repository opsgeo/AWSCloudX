#Provider credentials

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

#create two iam users with different policies

resource "aws_iam_user" "adam" {
  name = "adam"
  path = "/team/"
}

resource "aws_iam_access_key" "adam" {
  user = "${aws_iam_user.adam.name}"
}

resource "aws_iam_user_policy_attachment" "adam_s3full" {
  user = "${aws_iam_user.adam.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess" 
}   


resource "aws_iam_user" "eva" {
  name = "eva"
  path = "/team/"
}

resource "aws_iam_access_key" "eva" {
  user = "${aws_iam_user.adam.name}"
}

resource "aws_iam_user_policy_attachment" "eva_s3full" {
  user = "${aws_iam_user.eva.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess" 
}  


#Create S3 bucket
resource "aws_s3_bucket" "awsbucket" {
  bucket = "my-tf-test-bucket-awscloud"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}