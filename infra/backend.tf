terraform {
  backend "s3" {
    bucket       = "matt-dev-tf"
    key          = "terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
}