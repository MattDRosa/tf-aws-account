terraform {
  backend "s3" {
    bucket       = var.bucket_name
    key          = "terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
}