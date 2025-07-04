terraform {
  backend "s3" {
    bucket       = "matt-dev-tf"
    key          = "terraform.tfstate"
    use_lockfile = true
  }
}