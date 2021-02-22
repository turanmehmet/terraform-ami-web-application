module "apache-web-server" {
  app_name         = "CompanyA-appx"
  source           = "../"
  aws_region       = "us-east-1"
  users3           = "jaden"
  bucketname       = "s3-bucket-companya-appx"
  desired_capacity = 3
  max_size         = 5
  min_size         = 3
  key_name         = "appx_key"
  key_location     = "~/.ssh/id_rsa.pub"
  ssh_cidr_blocks = [
    "127.0.0.1/32",
    "0.0.0.0/0"
  ]
}